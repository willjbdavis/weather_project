import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  final IconData iconData;
  final String text;
  final MaterialColor color;

  const IconRow({
    super.key,
    required this.iconData,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(
        horizontal: 0,
        vertical: VisualDensity.minimumDensity,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      leading: Icon(
        iconData,
        color: color,
        size: 24.0,
        semanticLabel: 'Water icon',
      ),
    );
  }
}
