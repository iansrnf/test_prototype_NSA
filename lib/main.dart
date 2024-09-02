import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter/src/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:new_flutter/src/presentation/views/auth/auth.dart';
import 'package:sizer/sizer.dart';
import 'src/injector.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (_) => injector()..add(GetAuthentication(context))),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sizer',
            theme: ThemeData.light(),
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Flutter Demo for Bloc'),
              ),
              body: const AuthScreen(),
            ),
          );
        },
      ),
    );
  }
}
