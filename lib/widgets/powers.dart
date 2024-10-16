import 'package:flutter/material.dart';

class Powers extends StatelessWidget {
  const Powers({
    super.key,
    required this.icon,
    required this.type,
    required this.value,
  });

  final IconData icon;
  final String type;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(type),
        Text('$value'),
      ],
    );
  }
}
