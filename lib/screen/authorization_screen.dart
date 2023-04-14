import 'package:flutter/material.dart';
import 'package:chef_list/screen/enter_number.dart';
import 'package:chef_list/components/title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(39, 39, 39, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              TitleText(
                  text: "Cheflist",
                  colour: Colors.white,
                  size: 35,
                  fontFamily: "Cera-Pro-black"),
              SizedBox(
                height: 45,
              ),
              TitleText(
                  text: "Авторизация",
                  colour: Colors.white,
                  size: 24,
                  fontFamily: "Cera-Pro-black"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Пожалуйста выберите способ авторизации",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(159, 170, 174, 1),
                    fontSize: 14,
                    fontFamily: "Cera-Pro-black"),
              ),
              EnterNumber(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.google,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(17),
                      primary: Color.fromRGBO(54, 54, 54, 1),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.blue,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(17),
                      primary: Color.fromRGBO(54, 54, 54, 1),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(17),
                      primary: Color.fromRGBO(54, 54, 54, 1),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return Container(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("Just a title"),
                            ConstrainedBox(
                              constraints: new BoxConstraints(
                                maxHeight: MediaQuery.of(context).size.height /
                                    3.5 *
                                    3.0, //this height is not contain `Text("Just a title")`'s height.
                              ),
                              child: Column(
                                children: [
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                  Text('sdsdsdsds'),
                                ],
                              ),
                            ),
                          ],
                        ));
                      });
                },
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'или',
                          style: TextStyle(
                              color: Color.fromRGBO(159, 170, 174, 1))),
                      TextSpan(
                        text: ' продолжить как гость',
                        style: TextStyle(
                          color: Color.fromRGBO(159, 170, 174, 1),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 340,
          color: Color(0xff757575),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(20))),
            // child: Padding(
            // padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Add Task",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue, // Background color
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
