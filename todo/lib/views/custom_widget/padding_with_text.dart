import 'package:flutter/material.dart';

class PaddingWithText extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final FontStyle? fontStyle;
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const PaddingWithText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.color,
      required this.fontWeight,
      required this.fontStyle,
      required this.style,
      required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: Text(text.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            fontStyle: fontStyle,
          )),
    );
  }
}
