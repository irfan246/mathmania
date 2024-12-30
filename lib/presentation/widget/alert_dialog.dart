import 'package:flutter/material.dart';

class AlertDialogGame extends StatelessWidget {
  const AlertDialogGame({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(37),
        child: SizedBox(
          width: screenWidth * 0.522,
          height: screenHeight * 0.98,
          child: Material(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.43125,
                    height: screenHeight * 0.22,
                    child: Wrap(
                      children: [
                        Text(
                          'Apa anda ingin keluar ruangan?',
                          style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Inter',
                              color: Color(0xFF679FFF)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.285,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.015625),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                                screenWidth * 0.16875, screenHeight * 0.13),
                            backgroundColor: Color(0xFF679FFF),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.015625),
                            ),
                          ),
                          child: Text(
                            'Tidak',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: screenWidth * 0.03125,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.0625,
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
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.015625),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                                screenWidth * 0.16875, screenHeight * 0.13),
                            backgroundColor: Color(0xFFF1F3FF),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.015625),
                            ),
                          ),
                          child: Text(
                            'Iya',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: screenWidth * 0.03125,
                              color: Color(0xFF679FFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
