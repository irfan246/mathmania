import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF679FFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/bintang.png',
              width: screenWidth * 0.223,
              height: screenHeight * 0.29,
            ),
            Text(
              'Menang!!',
              style: TextStyle(
                fontSize: screenWidth * 0.069,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
            Text(
              '150',
              style: TextStyle(
                fontSize: screenWidth * 0.0522,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
            // Text(
            //   'menunggu tuan rumah....',
            //   style: TextStyle(
            //     fontSize: screenWidth * 0.025,
            //     fontFamily: 'Inter',
            //     color: Colors.white,
            //     fontWeight: FontWeight.w200,
            //   ),
            // ),
            SizedBox(
              height: screenHeight * 0.0758,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  style: TextButton.styleFrom(
                    fixedSize:
                        Size(screenWidth * 0.228125, screenHeight * 0.13),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(screenWidth * 0.015625),
                      side: BorderSide(
                          color: Colors.white, width: screenWidth * 0.003125),
                    ),
                  ),
                  child: Text(
                    'Bubarkan',
                    style: TextStyle(
                      fontSize: screenWidth * 0.03125,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.042,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFB4CFFF),
                        offset: Offset(
                            screenWidth * -0.0073, screenHeight * 0.0161),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(screenWidth * 0.015625),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(screenWidth * 0.23542, screenHeight * 0.13),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.015625),
                      ),
                    ),
                    child: Text(
                      'Main Lagi',
                      style: TextStyle(
                        fontSize: screenWidth * 0.03125,
                        fontFamily: 'Inter',
                        color: Color(0xFF679FFF),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
