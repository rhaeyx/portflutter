import 'package:flutter/material.dart';

class IconWithLabel extends StatefulWidget {
  final IconData iconContent;
  final String label;
  const IconWithLabel(
      {super.key, required this.iconContent, required this.label});

  @override
  _IconWithLabelState createState() => _IconWithLabelState();
}

class _IconWithLabelState extends State<IconWithLabel> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: Row(children: [
        Icon(
          widget.iconContent,
          color: _isHovered ? Colors.white : Color.fromRGBO(135, 135, 135, 1),
        ),
        const SizedBox(width: 5),
        Text(
          widget.label,
          style: TextStyle(
              color:
                  _isHovered ? Colors.white : Color.fromRGBO(135, 135, 135, 1),
              fontSize: 18),
        )
      ]),
    );
  }
}
