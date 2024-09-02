import 'package:get_it/get_it.dart';
import 'package:new_flutter/src/presentation/blocs/auth_bloc/auth_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  ///BLOC
  injector.registerFactory<AuthBloc>(() => AuthBloc());
}
