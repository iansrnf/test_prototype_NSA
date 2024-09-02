import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthLoading()) {
    on<AuthInitialize>(_getAuthenticatedUser);
    on<GetAuthentication>(_getAuthenticatedUser);
    on<LoginEvent>(_login);
    on<Logout>(_logout);
  }

  void _getAuthenticatedUser(AuthEvent event, Emitter<AuthState> emit) async {
    emit(const Unauthenticated());
  }

  void _login(AuthEvent event, Emitter<AuthState> emit) async {
    emit(const Authenticated());
  }

  void _logout(AuthEvent event, Emitter<AuthState> emit) async {
    emit(const Unauthenticated());
  }
}
