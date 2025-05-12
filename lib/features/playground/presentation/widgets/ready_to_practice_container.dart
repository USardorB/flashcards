import 'package:flutter/material.dart';

class ReadyToPracticeContainer extends StatelessWidget {
  const ReadyToPracticeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(begin: Alignment(-1, 1), colors: [
          Color(0xFFa855f7),
          Color(0xFF6366f1),
        ]),
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Ready to practice?',
            //  TODO;
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'Choose a learning mode below to start improving your language skills.',
            //  TODO;
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 8),
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
