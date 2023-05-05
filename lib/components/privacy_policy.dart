import 'package:chef_list/components/social_media_button.dart';
import 'package:chef_list/components/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/authorization_screen.dart';
import 'checkbox.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy(
      {super.key, required this.containerHeight, required this.onTap});
  final double containerHeight;
  final Function() onTap;

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 50,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        IconButton(
          onPressed: widget.onTap,
          icon: Icon(
            Icons.close,
            size: 30,
            color: Colors.white,
          ),
        ),
      ]),
      TitleText(
        text: "Cheflist",
        colour: Colors.white,
        size: 35,
        fontFamily: "Cera-Pro-black",
      ),
      SizedBox(height: 15),
      Expanded(
          child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 22),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                        text: "Политика конфедициальности",
                        colour: Colors.white,
                        size: 18,
                        fontFamily: "Cera-Pro-black"),
                    DescriptionText(
                      text:
                          "Настоящая Политика конфиденциальности персональных данных (далее – Политика конфиденциальности) действует в отношении всей информации, которую данный сайт, на котором размещен текст этой Политики конфиденциальности, может получить о Пользователе, а также любых программ и продуктов, размещенных на нем.",
                    ),
                    Text(
                      "1. Определение терминов",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
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
    ]);
  }
}
