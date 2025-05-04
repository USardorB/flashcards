import 'package:flutter/material.dart';

class DashboardFillerCards extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  const DashboardFillerCards({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card.outlined(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: iconColor),
            Text(title, style: TextTheme.of(context).bodyMedium),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextTheme.of(context).bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
