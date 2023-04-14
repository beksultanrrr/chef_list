import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  ExamplePageState createState() => ExamplePageState();
}

class ExampleMask {
  final TextEditingController textController = TextEditingController();
  final MaskTextInputFormatter formatter;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType textInputType;

  ExampleMask(
      {required this.formatter,
      this.validator,
      required this.hint,
      required this.textInputType});
}

class ExamplePageState extends State<ExamplePage> {
  final List<ExampleMask> examples = [
    ExampleMask(
        formatter: MaskTextInputFormatter(mask: "+# (###) ###-##-##"),
        hint: "+1 (234) 567-89-01",
        textInputType: TextInputType.phone),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
            child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                children: examples.map(buildTextField).toList())));
  }

  Widget buildTextField(ExampleMask example) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          TextFormField(
              controller: example.textController,
              inputFormatters: [UpperCaseTextFormatter(), example.formatter],
              autocorrect: false,
              keyboardType: example.textInputType,
              autovalidateMode: AutovalidateMode.always,
              validator: example.validator,
              decoration: InputDecoration(
                  hintText: example.hint,
                  hintStyle: const TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  errorMaxLines: 1)),
       
        ],
      ),
    );
  }
}

class UpperCaseTextFormatter implements TextInputFormatter {
  const UpperCaseTextFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}

