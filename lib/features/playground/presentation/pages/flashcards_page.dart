import 'dart:math';

import 'package:flashcards/features/playground/presentation/widgets/current_progress.dart';
import 'package:flashcards/features/playground/presentation/widgets/flashcard.dart';
import 'package:flashcards/features/playground/presentation/widgets/flashcard_actions.dart';
import 'package:flutter/material.dart';

class FlashcardsPage extends StatefulWidget {
  const FlashcardsPage({super.key});

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage>
    with TickerProviderStateMixin {
  late AnimationController _flipController;
  bool _isFront = true;

  Offset _position = Offset.zero;
  late AnimationController _swipeController;
  late Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    final rotation = _position.dx / 300;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [Text('1/10')],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(height: 24),
          CurrentProgress(),
          Spacer(),
          GestureDetector(
            onPanUpdate: _onPanUpdate,
            onPanEnd: _onPanEnd,
            child: Transform.translate(
              offset: _position,
              child: Transform.rotate(
                alignment: Alignment.bottomCenter,
                angle: rotation,
                child: AnimatedBuilder(
                  animation: _flipController,
                  builder: (context, child) => Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001) // perspective
                      ..rotateY(_flipController.value * pi),
                    child: switch (_isFront) {
                      false => Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..rotateY(pi),
                          child: child,
                        ),
                      true => child,
                    },
                  ),
                  child: Flashcard(onTap: _flip),
                ),
              ),
            ),
          ),
          Spacer(),
          FlashcardActions(),
          Spacer(),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    _flipController.dispose();
    _swipeController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _swipeController = AnimationController(vsync: this);

    _flipController = AnimationController(
      vsync: this,
      duration: Durations.long2,
    );
    super.initState();
  }

  void _animateBack() {
    _animation = Tween<Offset>(begin: _position, end: Offset.zero).animate(
      CurvedAnimation(parent: _swipeController, curve: Curves.easeOut),
    )..addListener(() {
        setState(() {
          _position = _animation.value;
        });
      });

    _swipeController
      ..duration = Durations.medium1
      ..forward(from: 0);
  }

  void _animateOffscreen(Offset target) {
    _animation = Tween<Offset>(begin: _position, end: target).animate(
      CurvedAnimation(parent: _swipeController, curve: Curves.easeOut),
    )..addListener(() {
        setState(() {
          _position = _animation.value;
        });
      });

    _swipeController
      ..duration = Durations.long4
      ..forward(from: 0).whenComplete(() {
        _resetCard();
      });
  }

  void _flip() {
    if (_isFront) {
      _flipController.forward();
    } else {
      _flipController.reverse();
    }
    _isFront = !_isFront;
  }

  void _onPanEnd(DragEndDetails details) {
    final screenWidth = MediaQuery.of(context).size.width;
    final threshold = screenWidth * 0.3;

    if (_position.dx > threshold) {
      _animateOffscreen(Offset(screenWidth * 2, _position.dy));
    } else if (_position.dx < -threshold) {
      _animateOffscreen(Offset(-screenWidth * 2, _position.dy));
    } else {
      // Reset position
      _animateBack();
    }
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _position += details.delta;
    });
  }

  void _resetCard() {
    setState(() {
      _position = Offset.zero;
    });
  }
}
