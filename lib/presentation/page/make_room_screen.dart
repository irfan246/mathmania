import 'package:flutter/material.dart';
import 'package:mathmania/presentation/widget/radio_button.dart';

class MakeRoomScreen extends StatelessWidget {
  const MakeRoomScreen({super.key});

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
          'Buat Ruangan',
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
          Positioned.fill(
              child: Image.asset(
            'assets/images/background_make_room.png',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.screen,
            color: Color(0xFF679FFF),
          )),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.09462,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Ruangan',
                        style: TextStyle(
                          fontSize: screenWidth * 0.03646,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.038,
                      ),
                      Text(
                        'Total Player per Team',
                        style: TextStyle(
                          fontSize: screenWidth * 0.03646,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0569,
                      ),
                      Text(
                        'Penjumlahan',
                        style: TextStyle(
                          fontSize: screenWidth * 0.03646,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.038,
                      ),
                      Text(
                        'Pengurangan',
                        style: TextStyle(
                          fontSize: screenWidth * 0.03646,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.038,
                      ),
                      Text(
                        'Perkalian',
                        style: TextStyle(
                          fontSize: screenWidth * 0.03646,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.078125,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.212,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.01),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: screenWidth * 0.003125),
                                borderRadius: BorderRadius.circular(
                                    screenWidth * 0.015625)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: screenWidth * 0.003125),
                                borderRadius: BorderRadius.circular(
                                    screenWidth * 0.015625)),
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
                        height: screenHeight * 0.038,
                      ),
                      SizedBox(
                        width: screenWidth * 0.212,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.01),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: screenWidth * 0.003125),
                                borderRadius: BorderRadius.circular(
                                    screenWidth * 0.015625)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: screenWidth * 0.003125),
                                borderRadius: BorderRadius.circular(
                                    screenWidth * 0.015625)),
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
                        height: screenHeight * 0.0569,
                      ),
                      RadioButton(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: screenWidth * 0.78125,
              top: screenHeight * 0.853,
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
                    Navigator.pushNamed(context, '/waitingRoom');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(screenWidth * 0.1573, screenHeight * 0.13),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(screenWidth * 0.015625),
                    ),
                  ),
                  child: Text(
                    'Buat',
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
