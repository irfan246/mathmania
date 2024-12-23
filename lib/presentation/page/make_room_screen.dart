import 'package:flutter/material.dart';
import 'package:mathmania/presentation/widget/radio_button.dart';

class MakeRoomScreen extends StatelessWidget {
  const MakeRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Buat Ruangan',
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
          Positioned.fill(
              child: Image.asset(
            'assets/images/background_make_room.png',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.screen,
            color: Color(0xFF679FFF),
          )),
          Center(
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
                        fontSize: 70,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Total Player per Team',
                      style: TextStyle(
                        fontSize: 70,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Penjumlahan',
                      style: TextStyle(
                        fontSize: 70,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Pengurangan',
                      style: TextStyle(
                        fontSize: 70,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Perkalian',
                      style: TextStyle(
                        fontSize: 70,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 407,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 6),
                              borderRadius: BorderRadius.circular(30)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 6),
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Kode...',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 70,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 407,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 6),
                              borderRadius: BorderRadius.circular(30)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 6),
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Kode...',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 70,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    RadioButton(),
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
                    Navigator.pushNamed(context, '/waitingRoom');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(302, 124),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Buat',
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
