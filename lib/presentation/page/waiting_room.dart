import 'package:flutter/material.dart';

class WaitingRoom extends StatelessWidget {
  const WaitingRoom({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF679FFF),
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
                  // showDialog(
                  //   context: context,
                  //   barrierDismissible: true,
                  //   barrierColor: Colors.black.withAlpha(128),
                  //   builder: (context) {
                  //     return AlertDialogGame();
                  //   },
                  // );
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
        title: Text(
          'Ruang Tunggu',
          style: TextStyle(
            fontSize: screenWidth * 0.03646,
            fontFamily: 'Inter',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.038,
                    ),
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.038,
                    ),
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.038,
                    ),
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.03125,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/bintang.png',
                          width: screenWidth * 0.109375,
                          height: screenHeight * 0.165,
                        ),
                        SizedBox(
                          width: screenWidth * 0.02125,
                        ),
                        Text(
                          'VS',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: screenWidth * 0.03125,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.0318,
                        ),
                        Image.asset(
                          'assets/images/bulan.png',
                          width: screenWidth * 0.092,
                          height: screenHeight * 0.165,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.09463,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Code Ruangan',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'ASDAWW',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.02125,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.038,
                    ),
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.038,
                    ),
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.038,
                    ),
                    SizedBox(
                      width: screenWidth * 0.212,
                      height: screenHeight * 0.14,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                              screenWidth * 0.015625),
                          border: Border.all(
                            color: Colors.white,
                            width: screenWidth * 0.003125,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              left: screenWidth * 0.78125,
              top: screenHeight * 0.8512,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFB4CFFF),
                      offset:
                          Offset(screenWidth * -0.0073, screenHeight * 0.0161),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(screenWidth * 0.015625),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loading');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(screenWidth * 0.1573, screenHeight * 0.13),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(screenWidth * 0.015625),
                    ),
                  ),
                  child: Text(
                    'Mulai',
                    style: TextStyle(
                      fontSize: screenWidth * 0.03125,
                      fontFamily: 'Inter',
                      color: Color(0xFF679FFF),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
