import 'package:flutter/material.dart';

class AlertDialogGame extends StatelessWidget {
  const AlertDialogGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(37),
        child: SizedBox(
          width: 1000,
          height: 1000,
          child: Material(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 828,
                    height: 232,
                    child: Wrap(
                      children: [
                        Text(
                          'Apa anda ingin keluar ruangan?',
                          style: TextStyle(
                              fontSize: 96,
                              fontFamily: 'Inter',
                              color: Color(0xFF679FFF)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DecoratedBox(
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
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(324, 124),
                            backgroundColor: Color(0xFF679FFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Tidak',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 60,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      DecoratedBox(
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
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(324, 124),
                            backgroundColor: Color(0xFFF1F3FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Iya',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 60,
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
