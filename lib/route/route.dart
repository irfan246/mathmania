import 'package:flutter/material.dart';
import 'package:mathmania/presentation/page/end_screen.dart';
import 'package:mathmania/presentation/page/game_screen.dart';
import 'package:mathmania/presentation/page/home_screen.dart';
import 'package:mathmania/presentation/page/loading_screen.dart';
import 'package:mathmania/presentation/page/main_screen.dart';
import 'package:mathmania/presentation/page/make_room_screen.dart';
import 'package:mathmania/presentation/page/waiting_room.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/main':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case '/makeRoom':
        return MaterialPageRoute(builder: (_) => const MakeRoomScreen());
      case '/waitingRoom':
        return MaterialPageRoute(builder: (_) => const WaitingRoom());
      case '/loading':
        return MaterialPageRoute(builder: (_) => const LoadingScreen());
      case '/game':
        return MaterialPageRoute(builder: (_) => const GameScreen());
      case '/end':
        return MaterialPageRoute(builder: (_) => const EndScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text("Page not found!")),
      ),
    );
  }
}
