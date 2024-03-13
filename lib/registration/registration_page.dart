import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
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
          SizedBox(
            height: 30,
          ),
          Container(
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
                ),
              ],
            ),
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
