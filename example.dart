import 'package:flutter/material.dart';
import 'package:chef_list/screen/enter_number.dart';
import 'package:chef_list/components/title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:chef_list/components/constant.dart';
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
      containerHeight = 200;
    });
  }


  void toggleContainer() {
    setState(() {
      showFirstContainer = !showFirstContainer;
      print(showFirstContainer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: AnimatedContainer(
            height: containerHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(39, 39, 39, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            duration: Duration(milliseconds: 200),
            child:
            Column(
              children:[
                SizedBox(height: 50,),
                 TitleText(
                            text: "Cheflist",
                            colour: Colors.white,
                            size: 35,
                            fontFamily: "Cera-Pro-black"),
                        SizedBox(
                          height: 45,
                        ),
                        TitleText(
                            text: showFirstContainer ? "Авторизация" : "Политика конфедициальности",
                            colour: Colors.white,
                            size: showFirstContainer ? 24 : 15,
                            fontFamily: "Cera-Pro-black"),
                Expanded(
                  
             child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: showFirstContainer
                  ? Column(
                      children: [
                       
                        SizedBox(
                          height: 10,
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
                          onPressed: () {},
                          child: RichText(
                            text: TextSpan(
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'или',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(159, 170, 174, 1))),
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
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: (bool) {}),
                              TextButton(
                                onPressed: () {
                                  changeHeight();
                                  toggleContainer();
                                  Future.delayed(Duration(milliseconds: 200),
                                      () {
                                    setState(() {
                                      containerHeight = 600;
                                    });
                                  });
                                },
                                child: Container(
                                  width: 256,
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    // s
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Я прочитал(а) и соглашаюсь с',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10)),
                                            TextSpan(
                                              text:
                                                  ' Пользовательским соглашениям и Политикой конфединциальности',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    159, 170, 174, 1),
                                                decoration:
                                                    TextDecoration.underline,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(children: [
                      IconButton(
                          onPressed: () {
                              changeHeight();
                                  toggleContainer();
                                  Future.delayed(Duration(milliseconds: 300),
                                      () {
                                    setState(() {
                                      containerHeight = 600;
                                    });
                                  });
                           
                            
                          },
                          icon: Icon(Icons.cancel,size: 30,))
                    ]),
            )
                )
              ]
            )
            ));
  }
}
