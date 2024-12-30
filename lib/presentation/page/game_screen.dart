import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/end');
    });
    return Scaffold(
      backgroundColor: Color(0xFF679FFF),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.059,
            child: Image.asset(
              'assets/images/entity.png',
              width: screenWidth,
              height: screenHeight * 0.054,
            ),
          ),
          Positioned(
            top: screenHeight * 0.059,
            child: Image.asset(
              'assets/images/icon_red.png',
              width: screenWidth * 0.0849,
              height: screenHeight * 0.157,
            ),
          ),
          Positioned(
            top: screenHeight * 0.11353,
            left: screenWidth * 0.078125,
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bintang.png',
                      width: screenWidth * 0.08546,
                      height: screenHeight * 0.152319,
                    ),
                    Text(
                      '50',
                      style: TextStyle(
                        fontSize: screenWidth * 0.03647,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.522,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bulan.png',
                      width: screenWidth * 0.0823,
                      height: screenHeight * 0.1004,
                    ),
                    Text(
                      '40',
                      style: TextStyle(
                        fontSize: screenWidth * 0.03647,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4 x 12 =',
                  style: TextStyle(
                    fontSize: screenWidth * 0.069,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.4484375,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.06627),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: screenWidth * 0.003125),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.015625)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: screenWidth * 0.003125),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.015625)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
