import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: screenHeight * 0.1722,
        automaticallyImplyLeading: false,
        flexibleSpace: Stack(
          children: [
            Positioned(
              left: screenWidth * 0.081,
              top: screenHeight * 0.04732,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Image.asset(
                  'assets/images/icon_back.png',
                  width: screenWidth * 0.0256,
                  height: screenHeight * 0.06245,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/images/background_main.png',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.screen,
            color: Color(0xFF679FFF),
          )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.685,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.04258),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: screenWidth * 0.003125),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.0105)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: screenWidth * 0.003125),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.0105)),
                      hintText: 'Username...',
                      hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: screenWidth * 0.0396,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.038,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.36771,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.04258),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: screenWidth * 0.003125),
                                borderRadius: BorderRadius.circular(
                                    screenWidth * 0.0105)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: screenWidth * 0.003125),
                                borderRadius: BorderRadius.circular(
                                    screenWidth * 0.0105)),
                            hintText: 'Kode...',
                            hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: screenWidth * 0.03646,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.03646,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.016),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFB4CFFF),
                              offset: Offset(
                                  screenWidth * -0.0073, screenHeight * 0.0161),
                            )
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            print('Width: ${screenWidth}');
                            print('Height: ${screenHeight}');
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                                screenWidth * 0.26797, screenHeight * 0.1826),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.016),
                            ),
                          ),
                          child: Text(
                            'Join',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: screenWidth * 0.03646,
                                color: Color(0XFF679FFF)),
                          ),
                        ),
                      )
                    ],
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
                        offset: Offset(
                            screenWidth * -0.0073, screenHeight * 0.0161),
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/makeRoom');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(screenWidth * 0.685, screenHeight * 0.18254),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.016),
                      ),
                    ),
                    child: Text(
                      'Buat Ruangan',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: screenWidth * 0.03646,
                          color: Color(0XFF679FFF)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
