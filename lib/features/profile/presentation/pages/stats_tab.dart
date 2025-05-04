import 'package:flashcards/features/profile/presentation/widgets/learning_progress_item.dart';
import 'package:flutter/material.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(width: 0),
          ),
          leading: const Icon(Icons.calendar_today_outlined, size: 18),
          horizontalTitleGap: 0,
          title: const Text('Weekly Activity'),
          minVerticalPadding: 16,
          isThreeLine: true,
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ['M', 'T', 'W', 'T', 'F', 'S', 'S']
                .map((element) => Text(element))
                .toList(),
          ),
        ),
        const Card.outlined(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.trending_up, size: 18),
                horizontalTitleGap: 0,
                title: Text('Learning Progress'),
                minVerticalPadding: 16,
              ),
              LearningProgressItem(title: 'Spanish', value: .45),
              LearningProgressItem(title: 'German', value: .1),
              LearningProgressItem(title: 'French', value: .2),
            ],
          ),
        ),
        const Card.outlined(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(spacing: 8, children: [
                  Icon(Icons.alarm, size: 18),
                  Text('Study Time'),
                ]),
                SizedBox(height: 14),
                Text('12h 35m'),
                Text('Total study time this month')
              ],
            ),
          ),
        )
      ],
    );
  }
}
