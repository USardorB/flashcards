import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? trailing;
  final MainAxisAlignment mainAxisAlignment;
  const SectionTitle({
    super.key,
    this.leading,
    this.trailing,
    required this.title,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [
      if (leading != null) leading!,
      title,
      if (trailing != null) trailing!,
    ]);
  }
}
