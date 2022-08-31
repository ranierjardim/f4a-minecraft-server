


abstract class LoginScreenEvent {}

class LoginScreenOnRegisterEvent extends LoginScreenEvent {}

class LoginScreenOnRecoveryEvent extends LoginScreenEvent {}

class LoginScreenOnLoginEvent extends LoginScreenEvent {
  final String user;
  final String password;

  LoginScreenOnLoginEvent(this.user, this.password);
}