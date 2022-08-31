


import 'package:bloc/bloc.dart';
import 'package:webapp/src/screens/login_screen/bloc/LoginScreenEvents.dart';
import 'package:webapp/src/screens/login_screen/bloc/LoginScreenStates.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc() : super(LoginScreenOnNormalState()) {
    on<LoginScreenOnLoginEvent>(_onLoginEvent);
    on<LoginScreenOnRegisterEvent>(_onRegisterEvent);
    on<LoginScreenOnRecoveryEvent>(_onRecoveryEvent);
  }

  Future<void> _onLoginEvent(LoginScreenOnLoginEvent event, Emitter emit) async {
    //emit(LoginScreenOnNormalState());
    emit(LoginScreenOnWrongUserOrPasswordState());
  }

  Future<void> _onRegisterEvent(LoginScreenOnRegisterEvent event, Emitter emit) async {
    //emit(LoginScreenOnNormalState());
    emit(LoginScreenOnWrongUserOrPasswordState());
  }

  Future<void> _onRecoveryEvent(LoginScreenOnRecoveryEvent event, Emitter emit) async {
    //emit(LoginScreenOnNormalState());
    emit(LoginScreenOnWrongUserOrPasswordState());
  }
}