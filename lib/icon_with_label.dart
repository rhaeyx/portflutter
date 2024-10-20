import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  final IconData iconContent;
  final String label;

  const IconWithLabel(
      {super.key, required this.iconContent, required this.label});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        iconContent,
        color: const Color.fromRGBO(135, 135, 135, 1),
      ),
      const SizedBox(width: 5),
      Text(
        label,
        style: const TextStyle(
            color: Color.fromRGBO(135, 135, 135, 1), fontSize: 18),
      )
    ]);
  }
}
