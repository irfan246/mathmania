import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/game');
    });
    return Scaffold(
      backgroundColor: Color(0xFF679FFF),
      body: Center(
        child: Text(
          'Mulai!!',
          style: TextStyle(
            fontSize: screenWidth * 0.068,
            fontFamily: 'Inter',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
