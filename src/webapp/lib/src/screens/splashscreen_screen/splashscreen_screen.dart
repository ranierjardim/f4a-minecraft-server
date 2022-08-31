import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webapp/src/screens/splashscreen_screen/bloc/SplashscreenScreenBloc.dart';
import 'package:webapp/src/screens/splashscreen_screen/bloc/SplashscreenScreenStates.dart';

class SplashscreenScreen extends StatefulWidget {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  State<SplashscreenScreen> createState() => _SplashscreenScreenState();
}

class _SplashscreenScreenState extends State<SplashscreenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener(
        bloc: BlocProvider.of<SplashscreenScreenBloc>(context),
        listener: (BuildContext context, SplashscreenScreenState state) {

        },
        child: BlocBuilder(
          bloc: BlocProvider.of<SplashscreenScreenBloc>(context),
          builder: (context, state) {
            return Container(color: Colors.blue,);
          },
        ),
      ),
    );
  }
}

