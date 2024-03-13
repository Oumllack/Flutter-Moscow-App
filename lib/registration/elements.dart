import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
        onPressed: () {},
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
