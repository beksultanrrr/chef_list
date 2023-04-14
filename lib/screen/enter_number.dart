import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:chef_list/components/constant.dart';
import '../components/constant.dart';
import '../components/country_picker.dart';

class EnterNumber extends StatelessWidget {
  const EnterNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void _callBackFunction(String name, String dialCode, String flag) {
      // place your code
    }

    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                child: CountryPicker(
                  callBackFunction: _callBackFunction,
                  headerText: 'Select Country',
                  headerBackgroundColor: Theme.of(context).primaryColor,
                  headerTextColor: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(54, 54, 54, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: kTextFieldDecoration,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(36),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Отправить',
              style: TextStyle(
                  color: Color.fromRGBO(54, 54, 54, 1),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
