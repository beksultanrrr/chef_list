import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMedaiButton extends StatelessWidget {
  const SocialMedaiButton({
    super.key,
    required this.icoon,
    required this.onTap,
  });
  final Icon icoon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: icoon,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(13),
        primary: Color.fromRGBO(54, 54, 54, 1),
      ),
    );
  }
  
}
