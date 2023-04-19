import 'package:flutter/material.dart';

class CheckBOX extends StatefulWidget {
  const CheckBOX({super.key});

  @override
  State<CheckBOX> createState() => _CheckBOXState();
}

bool isChecked = false;

class _CheckBOXState extends State<CheckBOX> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: isChecked == true
              ? Color.fromRGBO(226, 234, 155, 1)
              : Color.fromRGBO(159, 170, 174, 1),
          width: 2.3,
        ),
      ),
      width: 26,
      height: 26,
      child: Theme(
        data: ThemeData(unselectedWidgetColor: Colors.transparent),
        child: Checkbox(
          checkColor: Color.fromRGBO(226, 234, 155, 1),
          activeColor: Colors.transparent,
          value: isChecked,
          tristate: false,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ),
    );
  }
}
