import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class QuizModePage extends StatelessWidget {
  /// [QuizModePage], a page that can be accessed using BottomNavbar.
  /// This page is a game where the user has to answer questions.
  const QuizModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Mode'),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [Text('1/10')],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(spacing: 24, children: [
          CurrentProgress(),
          QuizVariants(
            onTap: print,
          ),
          Align(
            alignment: Alignment(1, 0),
            child: FilledButton(
              onPressed: () {},
              child: Text('Try Again'),
            ),
          ),
        ]),
      ),
    );
  }
}
