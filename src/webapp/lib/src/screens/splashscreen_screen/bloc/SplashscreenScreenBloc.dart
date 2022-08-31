import 'package:bloc/bloc.dart';
import 'package:webapp/src/screens/login_screen/bloc/LoginScreenEvents.dart';
import 'package:webapp/src/screens/login_screen/bloc/LoginScreenStates.dart';
import 'package:webapp/src/screens/splashscreen_screen/bloc/SplashscreenScreenEvents.dart';
import 'package:webapp/src/screens/splashscreen_screen/bloc/SplashscreenScreenStates.dart';

class SplashscreenScreenBloc
    extends Bloc<SplashscreenScreenEvent, SplashscreenScreenState> {
  SplashscreenScreenBloc() : super(SplashscreenScreenOnNormalState()) {
    on<SplashscreenScreenOnLoadEvent>(_onLoadEvent);
  }

  Future<void> _onLoadEvent(
      SplashscreenScreenOnLoadEvent event, Emitter emit) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    emit(SplashscreenScreenOnFinishedLoadState());
  }
}
