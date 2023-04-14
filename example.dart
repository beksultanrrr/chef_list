import 'package:flutter/material.dart';
import 'package:chef_list/components/country_picker.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _callBackFunction(String name, String dialCode, String flag) {
      // place your code
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              color: Color.fromRGBO(39, 39, 39, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            children: [
              Text(
                "Cheflist",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "Cera-Pro-black"),
              ),
              Text(
                "Авторизация",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: "Cera-Pro-black"),
              ),
              Text(
                "Пожалуйста выберите способ авторизации",
                style: TextStyle(
                    color: Color.fromRGBO(159, 170, 174, 1),
                    fontSize: 14,
                    fontFamily: "Cera-Pro-black"),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CountryPicker(
                    callBackFunction: _callBackFunction,
                    headerText: 'Select Country',
                    headerBackgroundColor: Theme.of(context).primaryColor,
                    headerTextColor: Colors.white,
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Contact Number',
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
