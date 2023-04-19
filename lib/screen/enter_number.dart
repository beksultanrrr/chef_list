import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:chef_list/components/constant.dart';
import '../components/constant.dart';
import '../components/country_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EnterNumber extends StatelessWidget {
  EnterNumber({
    super.key,
  });
  final maskFormatter = new MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
  );

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void _callBackFunction(String name, String dialCode, String flag) {}

    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                width: 65,

                // child: CountryPicker(
                //   callBackFunction: _callBackFunction,
                //   headerText: 'Select Country',
                //   headerBackgroundColor: Theme.of(context).primaryColor,
                //   headerTextColor: Colors.white,
                // ),
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
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Cera-Pro-bold"),
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: kTextFieldDecoration,
                  inputFormatters: [maskFormatter],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              print("YES");
            },
            child: Container(
              height: 50,
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
          ),
        ],
      ),
    );
  }
}
