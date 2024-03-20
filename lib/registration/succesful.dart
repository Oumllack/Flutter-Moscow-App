import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Succesful_page extends StatefulWidget {
  const Succesful_page({super.key});

  @override
  State<Succesful_page> createState() => _Succesful_pageState();
}

class _Succesful_pageState extends State<Succesful_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/Background 6.png',
                ),
                fit: BoxFit.contain,
                alignment: Alignment(0, -1.1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SEMPL!",
                  style: TextStyle(
                    fontFamily: 'DrukCyr',
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 259),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          'images/Background 7.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text(
                                  "Мы рады приветствовать Вас в нашем приложении. Чтобы предложить вам подходящие тесты продуктов, пройдите небольшой опрос и заполните личные данные",
                                  style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: ThirdContinueButton(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ThirdContinueButton extends StatelessWidget {
  const ThirdContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 45,
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'НАЧАТЬ',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'SourceSansPro',
                color: Color(0xFF99BFD4),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SvgPicture.asset('images/arrow 2.svg')
          ],
        ),
      ),
    );
  }
}
