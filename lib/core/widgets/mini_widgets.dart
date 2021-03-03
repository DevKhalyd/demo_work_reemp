import 'package:flutter/material.dart';

/// Allows to put a space between widgets in a Column or Row
class Space extends StatelessWidget {
  const Space(this.space, {this.isHorizontal = false});

  final double space;
  final bool isHorizontal;

  @override
  Widget build(BuildContext context) => isHorizontal
      ? SizedBox(
          width: _getSpace(context) * space,
        )
      : SizedBox(
          height: _getSpace(context) * space,
        );

  double _getSpace(BuildContext context) => isHorizontal
      ? MediaQuery.of(context).size.width
      : MediaQuery.of(context).size.height;
}

class CustomText extends StatelessWidget {
  const CustomText(
    this.txt, {
    Key key,
    this.isBold = false,
    this.fontSize = 16,
    this.isItalic = false,
  }) : super(key: key);

  final String txt;
  final bool isBold, isItalic;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal),
    );
  }
}
