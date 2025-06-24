import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

/// [FlashcardsPage] is [StatefulWidget] as it needs to animate the flashcards
class FlashcardsPage extends StatefulWidget {
  /// [FlashcardsPage] to display the words in swipable cards format.
  /// This is also considered the default mode of playing(when entering from [HomePage])
  const FlashcardsPage({super.key});

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

/// [TickerProviderStateMixin] is used to provide a [Ticker] for the [AnimationController]
class _FlashcardsPageState extends State<FlashcardsPage>
    with TickerProviderStateMixin {
  // [_flipController] to control the flip animation of the flashcards
  late final AnimationController _flipController;
  bool _isFront = true; //  A flag to determine the side of the card

  // [AnimationController] to control the swipe animation of the flashcards
  late final AnimationController _swipeController;
  late final Animation<Offset> _animation;
  Offset _position = Offset.zero; // The position of the card

  @override
  void initState() {
    _swipeController = AnimationController(vsync: this);

    _flipController = AnimationController(
      vsync: this,
      duration: Durations.long2,
    );
    super.initState();
  }

  @override
  void dispose() {
    _flipController.dispose();
    _swipeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // The rotation of the card based on the position
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

  // [_animateBack] to animate the card back to the center
  void _animateBack() {
    _animation = Tween<Offset>(begin: _position, end: Offset.zero).animate(
      CurvedAnimation(parent: _swipeController, curve: Curves.easeOut),
    )..addListener(() => setState(() => _position = _animation.value));

    _swipeController
      ..duration = Durations.medium1
      ..forward(from: 0);
  }

  // [_animateOffscreen] to animate the card offscreen
  void _animateOffscreen(Offset target) {
    _animation = Tween<Offset>(begin: _position, end: target).animate(
      CurvedAnimation(parent: _swipeController, curve: Curves.easeOut),
      // Update the position of the card by listening to it
    )..addListener(() => setState(() => _position = _animation.value));

    _swipeController
      ..duration = Durations.long4
      ..forward(from: 0).whenComplete(() => _resetCard());
  }

  // [_flip] to flip the card
  void _flip() {
    if (_isFront) {
      _flipController.forward();
    } else {
      _flipController.reverse();
    }
    _isFront = !_isFront;
  }

  // Check if the card is swiped left or right
  void _onPanEnd(DragEndDetails details) {
    final screenWidth = MediaQuery.of(context).size.width;
    final threshold = screenWidth * 0.3;

    // If the card is swiped left or right, animate it offscreen
    if (_position.dx > threshold) {
      _animateOffscreen(Offset(screenWidth * 2, _position.dy));
    } else if (_position.dx < -threshold) {
      _animateOffscreen(Offset(-screenWidth * 2, _position.dy));
    } else {
      // If the card is not swiped, animate it back to the center
      _animateBack();
    }
  }

  // [_onPanUpdate] to update the position of the card
  void _onPanUpdate(DragUpdateDetails details) => setState(
        () => _position += details.delta,
      );

  // [_resetCard] to reset the position of the card
  void _resetCard() => setState(() => _position = Offset.zero);
}
