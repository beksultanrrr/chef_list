import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

const kTextFieldDecoration = InputDecoration(
  filled: true, //<-- SEE HERE
  fillColor: Color.fromRGBO(54, 54, 54, 1),
  hintText: '+971(__)__-__ -__-__',
  hintStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontFamily: "Cera-Pro-bold"), //<-- SEE HERE

  contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

var kmaskFormatter =  MaskTextInputFormatter(
  mask: '+# (###) ###-##-##', 
  filter: { "#": RegExp(r'[0-9]') },
  type: MaskAutoCompletionType.lazy
);
