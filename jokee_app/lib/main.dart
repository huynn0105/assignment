import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokee_app/locator.dart';
import 'package:jokee_app/presentation/blocs/joke_bloc/joke_bloc.dart';

import 'presentation/ui/home_screen.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jokee App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: BlocProvider<JokeBloc>(
          create: (context) => JokeBloc(),
          child: const HomeScreen(),
        ));
  }
}
