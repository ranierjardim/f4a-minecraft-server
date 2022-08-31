import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:webapp/src/screens/login_screen/login_screen.dart';
import 'package:webapp/src/screens/splashscreen_screen/bloc/SplashscreenScreenBloc.dart';
import 'package:webapp/src/screens/splashscreen_screen/splashscreen_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashscreenScreenBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (context, child) => ResponsiveWrapper.builder(child,
            maxWidth: 1200,
            minWidth: 480,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
            background: Container(color: Colors.green)),
        home: const SplashscreenScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashscreenScreen(),
          '/login': (context) => const LoginScreen(),
        },
      ),
    );
  }
}
