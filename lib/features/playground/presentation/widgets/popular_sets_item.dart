import 'package:flashcards/core/extensions/build_context.dart';
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
      title: Text(
        title,
        style: TextTheme.of(context).bodyMedium,
      ),
      subtitle: Text(
        subtitle,
        style: TextTheme.of(context).bodySmall,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundColor: color.withAlpha(40),
        child: Icon(icon, color: color),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      trailing: Align(
        widthFactor: 0,
        alignment: const Alignment(1, -.5),
        child: Card.outlined(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.fromWidth(10),
              vertical: context.fromHeight(2),
            ),
            child: Text(
              mode,
              style: TextTheme.of(context).labelLarge,
            ),
          ),
        ),
      ),
    );
  }
}
