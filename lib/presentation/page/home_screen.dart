import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
            child: Image.asset(
          'assets/images/background_home_screen.png',
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.screen,
          color: Color(0xFF679FFF),
        )),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(90),
                        offset: Offset(0, 10),
                        blurRadius: 8.8,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage('assets/icon/logo.png'),
                      width: 267,
                      height: 267,
                    ),
                  )),
              Text(
                'MATHMANIA',
                style: TextStyle(
                  fontSize: 150,
                  color: Colors.white,
                  fontFamily: 'Roboto_Mono',
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFB4CFFF),
                      offset: Offset(-14, 17),
                    )
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/main');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fixedSize: Size(1002.76, 141.42),
                  ),
                  child: Text(
                    'Main',
                    style: TextStyle(
                        fontSize: 60,
                        fontFamily: 'Inter',
                        color: Color(0xFF679FFF)),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFB4CFFF),
                      offset: Offset(-14, 17),
                    )
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    exit(0);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fixedSize: Size(1002.76, 141.42),
                  ),
                  child: Text(
                    'Keluar',
                    style: TextStyle(
                        fontSize: 60,
                        fontFamily: 'Inter',
                        color: Color(0xFF679FFF)),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
