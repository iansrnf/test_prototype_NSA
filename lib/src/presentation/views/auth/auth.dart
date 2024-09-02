import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter/src/presentation/blocs/auth_bloc/auth_bloc.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            switch (state) {
              case AuthLoading():
                return const Center(child: Text('Loading'));
              case Unauthenticated():
                return const Center(child: Text('Unauthenticated'));
              case Authenticated():
                return const Center(child: Text('Authenticated'));
              case AuthError():
                return const Center(child: Text('Error'));
            }
          },
        ),
        ElevatedButton(
          onPressed: () {
            authBloc.add(const LoginEvent());
          },
          child: const Text('Login'),
        )
      ],
    );
  }
}
