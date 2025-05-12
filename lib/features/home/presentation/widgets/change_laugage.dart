import 'package:flashcards/core/enums/languages.dart';
import 'package:flutter/material.dart';

class ChangeLaugage extends StatefulWidget {
  const ChangeLaugage({super.key});

  @override
  State<ChangeLaugage> createState() => _ChangeLaugageState();
}

class _ChangeLaugageState extends State<ChangeLaugage> {
  Languages language = Languages.english;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Languages>(
      initialValue: Languages.english,
      itemBuilder: (context) => Languages.values.map((e) {
        return PopupMenuItem(value: e, child: Text(e.toString()));
      }).toList(),
      constraints: BoxConstraints(minWidth: 130),
      onSelected: (value) => setState(() => language = value),
      borderRadius: BorderRadius.circular(18),
      child: Card.outlined(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Row(spacing: 4, children: [
            const Icon(Icons.language),
            Text(language.toString()),
            const Icon(Icons.arrow_drop_down),
          ]),
        ),
      ),
    );
  }
}
