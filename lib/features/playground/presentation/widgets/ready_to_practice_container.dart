import 'package:flashcards/core/extensions/build_context.dart';
import 'package:flutter/material.dart';

class ReadyToPracticeContainer extends StatelessWidget {
  const ReadyToPracticeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.fromWidth(24),
        vertical: context.fromHeight(24),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(begin: Alignment(-1, 1), colors: [
          Color(0xFFa855f7),
          Color(0xFF6366f1),
        ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Ready to practice?',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          context.toHeight(8),
          const Text(
            'Choose a learning mode below to start improving your language skills.',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          context.toHeight(16),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: ColorScheme.of(context).surface,
              foregroundColor: ColorScheme.of(context).onSurface,
            ),
            child: const Text('Pick Random'),
          )
        ],
      ),
    );
  }
}
