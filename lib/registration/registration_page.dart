import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'elements.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'succesful.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final mask = MaskTextInputFormatter(
    mask: '(###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  final String requiredNumber = '12345';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(),
          SizedBox(
            height: 30,
          ),
          PhoneNumber(),
          SizedBox(
            height: 30,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                CheckBox(),
                AcceptTermsText(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: ContinueButton(),
          ),
        ],
      ),
    );
  }
}
