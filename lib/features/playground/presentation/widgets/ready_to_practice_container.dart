import 'package:flutter/material.dart';

class ReadyToPracticeContainer extends StatelessWidget {
  const ReadyToPracticeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
          const Text('Ready to practice?'),
          const Text(
            'Choose a learning mode below to start improving your language skills.',
          ),
          const Text(
            'Or press belove to chose a random one.',
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Pick a random'),
          )
        ],
      ),
    );
  }
}
