import 'package:flutter/material.dart';

class PopularSetsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String mode;
  final IconData icon;
  final Color color;
  const PopularSetsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.mode,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
      ),
      horizontalTitleGap: 12,
      minVerticalPadding: 16,
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.black38),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundColor: color,
        child: Icon(icon),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      trailing: Align(
        widthFactor: 0,
        alignment: const Alignment(1, -.5),
        child: Card.outlined(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              mode,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
