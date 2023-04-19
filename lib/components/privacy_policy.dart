import 'package:flutter/material.dart';

import 'package:chef_list/components/title.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy(
      {super.key, required this.containerHeight, required this.onPress});
  final containerHeight;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        height: containerHeight,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(39, 39, 39, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        duration: Duration(milliseconds: 200),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                TitleText(
                    text: "Cheflist",
                    colour: Colors.white,
                    size: 35,
                    fontFamily: "Cera-Pro-black"),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 50),
                  child: IconButton(
                      onPressed: onPress,
                      icon: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.white,
                      )),
                )
              ]),
          SizedBox(
            height: 30,
          ),
          TitleText(
              text: "Политика конфедициальности",
              colour: Colors.white,
              size: 17,
              fontFamily: "Cera-Pro-black"),
          Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    children: [],
                  )))
        ]));
  }
}
