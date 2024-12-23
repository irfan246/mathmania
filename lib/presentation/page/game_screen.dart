import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/end');
    });
    return Scaffold(
      backgroundColor: Color(0xFF679FFF),
      body: Stack(
        children: [
          Positioned(
            top: 60,
            child: Image.asset('assets/images/entity.png'),
          ),
          Positioned(
            top: 60,
            child: Image.asset('assets/images/icon_red.png'),
          ),
          Positioned(
            top: 120,
            left: 150,
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bintang.png',
                      width: 170,
                      height: 161,
                    ),
                    Text(
                      '50',
                      style: TextStyle(
                        fontSize: 70,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 1000,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bulan.png',
                      width: 158,
                      height: 106,
                    ),
                    Text(
                      '40',
                      style: TextStyle(
                        fontSize: 70,
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
                    fontSize: 128,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 861,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 70),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 6),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 6),
                          borderRadius: BorderRadius.circular(30)),
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
