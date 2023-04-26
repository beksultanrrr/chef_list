import 'package:chef_list/components/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:chef_list/components/constant.dart';
import 'package:chef_list/components/first_screen.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  double containerHeight = 600.0;
  void changeHeight() {
    setState(() {
      containerHeight = 400;
    });
  }

  void toggleContainer() {
    setState(() {
      showFirstContainer = !showFirstContainer;
      print(showFirstContainer);
    });
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Align(
      alignment: Alignment.bottomCenter,
      child: Stack(clipBehavior: Clip.none, children: [
        AnimatedContainer(
            height: containerHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(39, 39, 39, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            duration: Duration(milliseconds: 200),
            child: showFirstContainer
                ? FirstScreen(
                    containerHeight: containerHeight, 
                    onTap: () {
                      changeHeight();
                      toggleContainer();
                      Future.delayed(Duration(milliseconds: 200), () {
                        setState(() {
                          containerHeight = 650;
                        });
                      });
                    },
                  )
                : PrivacyPolicy(
                    containerHeight: containerHeight,
                    onTap: () {
                      changeHeight();
                      toggleContainer();
                      Future.delayed(Duration(milliseconds: 200), () {
                        setState(() {
                          containerHeight = 600;
                        });
                      });
                    },
                  )),
        Positioned(
            top: -25,
            right: 0,
            left: 0,
            child: CircleAvatar(
                radius: (30),
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/chef.png",
                    width: 35,
                    height: 35,
                  ),
                )))
      ]),
    ));
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 15),
      child: Text(
        text,
        style: TextStyle(fontSize: 13, color: Color.fromRGBO(159, 170, 174, 1)),
      ),
    );
  }
}
