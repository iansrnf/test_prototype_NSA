part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {
  const AuthEvent();
}

class AuthInitialize extends AuthEvent {
  const AuthInitialize();
}

class GetAuthentication extends AuthEvent {
  final BuildContext context;
  const GetAuthentication(this.context);
}

class LoginEvent extends AuthEvent {
  const LoginEvent();
}

class Logout extends AuthEvent {
  const Logout();
}
