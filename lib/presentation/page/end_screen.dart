import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF679FFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/bintang.png'),
            Text(
              'Menang!!',
              style: TextStyle(
                fontSize: 128,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
            Text(
              '150',
              style: TextStyle(
                fontSize: 100,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  style: TextButton.styleFrom(
                    fixedSize: Size(438, 124),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.white, width: 6),
                    ),
                  ),
                  child: Text(
                    'Bubarkan',
                    style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
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
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(452, 124),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Main Lagi',
                      style: TextStyle(
                        fontSize: 60,
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
