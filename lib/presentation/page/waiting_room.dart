import 'package:flutter/material.dart';

class WaitingRoom extends StatelessWidget {
  const WaitingRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF679FFF),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 182,
        automaticallyImplyLeading: false,
        flexibleSpace: Stack(
          children: [
            Positioned(
              left: 155,
              top: 50,
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
                  width: 49,
                  height: 66,
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'Ruang Tunggu',
          style: TextStyle(
            fontSize: 70,
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
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
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
                  width: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/bintang.png'),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          'VS',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 60,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Image.asset('assets/images/bulan.png'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Code Ruangan',
                          style: TextStyle(
                            fontSize: 64,
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'ASDAWW',
                          style: TextStyle(
                            fontSize: 64,
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Inter',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 407,
                      height: 147,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border: Border.all(
                            color: Colors.white,
                            width: 6,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Player 1',
                            style: TextStyle(
                              fontSize: 48,
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
              left: 1500,
              top: 900,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFB4CFFF),
                      offset: Offset(-14, 17),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loading');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(302, 124),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Mulai',
                    style: TextStyle(
                      fontSize: 60,
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
