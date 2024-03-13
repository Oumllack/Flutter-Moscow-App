import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'elements.dart';

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
