import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mathmania/application/bloc_button_radion/radio_button_bloc.dart';
import 'package:mathmania/presentation/page/home_screen.dart';
import 'package:mathmania/route/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RadioButtonBloc(),
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        onGenerateRoute: AppRouter().generateRoute,
        home: const HomeScreen(),
      ),
    );
  }
}
