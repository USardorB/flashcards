import 'package:flashcards/features/explore/widgets/gird_item.dart';
import 'package:flutter/material.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        return const GridItem(
          color: Color(0xFF465156),
        );
      },
    );
  }
}
