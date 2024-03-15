import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:my_app/registration/confirmation_page.dart';
import 'package:my_app/registration/succesful.dart';

import 'dart:async';

import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final mask = MaskTextInputFormatter(
    mask: '(###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 331,
        height: 51,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Color(0xFF99BFD4),
            width: 0.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 87,
              height: 51,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset('images/flags.svg'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(+7)',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 150,
              child: TextField(
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: const InputDecoration(
                  hintText: "000 000 00 00",
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF99BFD4),
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [mask],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
          value: isChecked,
          side: BorderSide(
            width: 1,
            color: Color(0xFF99BFD4),
          ),
          activeColor: Color(0xFF99BFD4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
            });
          }),
    );
  }
}

class AcceptTermsText extends StatelessWidget {
  const AcceptTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: RichText(
        text: TextSpan(
          text: 'Я соглашаюсь с ',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'SourceSansPro',
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Условиями Пользовательского Соглашения',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'SourceSansPro',
                color: Color(0xFF99BFD4),
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' и ',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'SourceSansPro',
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: 'Политикой Конфиденциальности ',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'SourceSansPro',
                color: Color(0xFF99BFD4),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 45,
      decoration: BoxDecoration(
        color: Color(0xFF99BFD4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ConfirmationPage(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ПРОДОЛЖИТЬ',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'SourceSansPro',
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SvgPicture.asset('images/arrow.svg')
          ],
        ),
      ),
    );
  }
}

class SecondContinueButton extends StatelessWidget {
  const SecondContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 45,
      decoration: BoxDecoration(
        color: Color(0xFF99BFD4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Succesful_page(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ПРОДОЛЖИТЬ',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'SourceSansPro',
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SvgPicture.asset('images/arrow.svg')
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 412,
        height: 268,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/Frame 4.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "SEMPL!",
              style: TextStyle(
                fontFamily: 'DrukCyr',
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 370,
              child: Text(
                "ДОБРО ПОЖАЛОВАТЬ!",
                style: TextStyle(
                  fontFamily: 'DrukCyr',
                  fontSize: 40,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 370,
              child: Text(
                "Для входа или регистрации в приложении                введите свой номер телефона:",
                style: TextStyle(
                  fontFamily: 'SourceSansProBold',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _pinCode extends StatefulWidget {
  const _pinCode({super.key});

  @override
  State<_pinCode> createState() => __pinCodeState();
}

class __pinCodeState extends State<_pinCode> {
  final String requiredNumber = '12345';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: PinCodeTextField(
          backgroundColor: Colors.white,
          appContext: context,
          length: 5,
          keyboardType: TextInputType.number,
          animationType: AnimationType.none,
          cursorColor: Color(0xFF99BFD4),
          textStyle: TextStyle(
            fontSize: 20,
            fontFamily: 'SourceSansPro',
          ),
          onChanged: (value) {
            print(value);
          },
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(
              10,
            ),
            fieldHeight: 65,
            fieldWidth: 62,
            inactiveColor: Color(0xFFCECECE),
            activeColor: Color(0xFFCECECE),
            activeBorderWidth: 0.5,
            inactiveBorderWidth: 0.5,
            selectedBorderWidth: 0.5,
            selectedColor: Color(0xFF99BFD4),
          ),
          onCompleted: (value) {
            if (value == requiredNumber) {
              print('valid pin');
            } else {
              print('invalid pin');
            }
          },
        ),
      ),
    );
  }
}
