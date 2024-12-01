import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final String title;

  const DiscountCard({
    required this.value,
    required this.onChanged,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title),
    );
  }
}
