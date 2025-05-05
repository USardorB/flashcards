import 'dart:math';

import 'package:flashcards/features/explore/widgets/gird_item.dart';
import 'package:flutter/material.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        childAspectRatio: 1.35,
        mainAxisSpacing: 8,
      ),
      itemCount: 10,
      padding: const EdgeInsets.all(12),
      itemBuilder: (BuildContext context, int index) {
        final color = Color.fromARGB(
          255,
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
        );
        final subtitle = random.nextBool() ? 'Beginner' : 'Advanced';
        final n = 10 + 2 * random.nextInt(41); // 10 + (0–40)×2 = 10–90

        return GridItem(
          color: color,
          subtitle: subtitle,
          title: '$n sets',
        );
      },
    );
  }
}
