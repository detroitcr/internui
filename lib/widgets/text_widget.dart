import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  const TextWidget({required this.text, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
