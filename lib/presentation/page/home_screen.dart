import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                    borderRadius: BorderRadius.circular(screenWidth * 0.0105),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(90),
                        offset: Offset(0, screenHeight * 0.0095),
                        blurRadius: screenWidth * 0.0046,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.0105),
                    child: Image(
                      image: AssetImage('assets/icon/logo.png'),
                      width: screenWidth * 0.1391,
                      height: screenHeight * 0.253,
                    ),
                  )),
              Text(
                'MATHMANIA',
                style: TextStyle(
                  fontSize: screenWidth * 0.0782,
                  color: Colors.white,
                  fontFamily: 'Roboto_Mono',
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0474,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.016),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFB4CFFF),
                      offset:
                          Offset(screenWidth * -0.0073, screenHeight * 0.0161),
                    )
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/main');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.016)),
                    fixedSize:
                        Size(screenWidth * 0.52227, screenHeight * 0.134),
                  ),
                  child: Text(
                    'Main',
                    style: TextStyle(
                        fontSize: screenWidth * 0.0313,
                        fontFamily: 'Inter',
                        color: Color(0xFF679FFF)),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.038,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.016),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFB4CFFF),
                      offset:
                          Offset(screenWidth * -0.0073, screenHeight * 0.0161),
                    )
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    exit(0);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.016)),
                    fixedSize:
                        Size(screenWidth * 0.52227, screenHeight * 0.134),
                  ),
                  child: Text(
                    'Keluar',
                    style: TextStyle(
                        fontSize: screenWidth * 0.0313,
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
