import 'package:flashcards/features/profile/presentation/widgets/learning_progress_item.dart';
import 'package:flutter/material.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 8, children: [
      ListTile(
        horizontalTitleGap: 0,
        isThreeLine: true,
        leading: Align(
          widthFactor: 1,
          alignment: Alignment(0, -.7),
          child: const Icon(Icons.calendar_today_outlined, size: 16),
        ),
        title: Text(
          'Weekly Activity',
          style: TextTheme.of(context).bodyMedium,
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ['M', 'T', 'W', 'T', 'F', 'S', 'S'].map((element) {
            return Text(element, style: TextTheme.of(context).bodySmall);
          }).toList(),
        ),
      ),
      SizedBox(height: 8),
      Card.outlined(
        child: Column(
          children: [
            ListTile(
              horizontalTitleGap: 0,
              shape: InputBorder.none,
              leading: Icon(Icons.trending_up, size: 18),
              title: Text(
                'Learning Progress',
                style: TextTheme.of(context).bodyMedium,
              ),
            ),
            LearningProgressItem(title: 'Spanish', value: .45),
            LearningProgressItem(title: 'German', value: .1),
            LearningProgressItem(title: 'French', value: .2),
          ],
        ),
      ),
      Card.outlined(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(spacing: 8, children: [
                Icon(Icons.alarm, size: 18),
                Text('Study Time'),
              ]),
              SizedBox(height: 8),
              Text(
                '12h 35m',
                style: TextTheme.of(context).titleLarge,
              ),
              Text(
                'Total study time this month',
                style: TextTheme.of(context).bodySmall,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
