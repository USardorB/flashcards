import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card.outlined(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Icon(Icons.book_outlined),
          ),
          SizedBox(height: 4),
          Text(
            'Beginner',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text('45 sets', style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
