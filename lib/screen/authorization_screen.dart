import 'package:flutter/material.dart';
import 'package:chef_list/screen/enter_number.dart';
import 'package:chef_list/components/title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:chef_list/components/constant.dart';
import 'package:chef_list/components/checkbox.dart';
import 'package:chef_list/components/social_media_button.dart';

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
          child: showFirstContainer
              ? AnimatedContainer(
                  height: containerHeight,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(39, 39, 39, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  duration: Duration(milliseconds: 200),
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
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
                        size: showFirstContainer ? 24 : 15,
                        fontFamily: "Cera-Pro-black"),
                    Expanded(
                        child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(vertical: 50),
                            child: Column(
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
                                      child: Image.asset(
                                        "assets/images/google.png",
                                        width: 35,
                                        height: 35,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(13),
                                        primary: Color.fromRGBO(54, 54, 54, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SocialMedaiButton(
                                        icoon: Icon(
                                          FontAwesomeIcons.facebookF,
                                          color: Colors.blue,
                                          size: 35,
                                        ),
                                        onTap: () {}),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SocialMedaiButton(
                                        icoon: Icon(
                                          FontAwesomeIcons.apple,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                        onTap: () {})
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'или',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    159, 170, 174, 1))),
                                        TextSpan(
                                          text: ' продолжить как гость',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                159, 170, 174, 1),
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Row(
                                    children: [
                                      CheckBOX(),
                                      TextButton(
                                        onPressed: () {
                                          changeHeight();
                                          toggleContainer();
                                          Future.delayed(
                                              Duration(milliseconds: 200), () {
                                            setState(() {
                                              containerHeight = 650;
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
                                                            TextDecoration
                                                                .underline,
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
                            )))
                  ]))
              : AnimatedContainer(
                  height: containerHeight,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(39, 39, 39, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
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
                        size: 18,
                        fontFamily: "Cera-Pro-black"),
                    Expanded(
                        child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 22),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DescriptionText(
                                    text:
                                        "Настоящая Политика конфиденциальности персональных данных (далее – Политика конфиденциальности) действует в отношении всей информации, которую данный сайт, на котором размещен текст этой Политики конфиденциальности, может получить о Пользователе, а также любых программ и продуктов, размещенных на нем.",
                                  ),
                                  Text(
                                    "1. Определение терминов",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  DescriptionText(
                                      text:
                                          "1.1 В настоящей Политике конфиденциальности используются следующие термины:"),
                                  DescriptionText(
                                      text:
                                          "1.1.1. «Администрация сайта» – уполномоченные сотрудники на управления сайтом, действующие от его имени, которые организуют и (или) осуществляет обработку персональных данных, а также определяет цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными."),
                                  DescriptionText(
                                      text:
                                          "1.1.2. «Персональные данные» — любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных). "),
                                  DescriptionText(
                                      text:
                                          "1.1.3. «Обработка персональных данных» — любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.")
                                ])))
                  ]))),
    );
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
