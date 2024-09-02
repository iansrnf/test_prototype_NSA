part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  final DioException? error;
  const AuthState({this.error});
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class Unauthenticated extends AuthState {
  const Unauthenticated();
}

class Authenticated extends AuthState {
  const Authenticated();
}

class AuthError extends AuthState {
  const AuthError(DioException error) : super(error: error);
}
