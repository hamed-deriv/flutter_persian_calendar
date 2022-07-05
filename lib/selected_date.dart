import 'package:flutter/material.dart';

class SelectedData extends StatelessWidget {
  const SelectedData({required this.value, Key? key}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          value,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      );
}
