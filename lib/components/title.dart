import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText(
      {super.key,
      required this.text,
      required this.size,
      required this.fontFamily,
      required this.colour
      
      });

  final String text;
  final Color colour;
  final double size;
  final String fontFamily;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colour, fontSize: size, fontFamily: fontFamily),
    );
  }
}
