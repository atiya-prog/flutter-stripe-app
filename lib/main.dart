import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:stripe_app/blocs/blocs.dart';
import 'package:stripe_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PayBloc())
      ],
      child: MaterialApp(
        title: 'Stripe App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home'         : (context) => const HomeScreen(),
          'complete_pay' : (context) => const CompletePayScreen(),
        },
        theme: ThemeData.light().copyWith(
          // primaryColor: const Color(0xff284879),
          colorScheme: const ColorScheme.light().copyWith(
            secondary: const Color(0xff284879)
          ),
          scaffoldBackgroundColor: const Color(0xff21232A)
        ),
      ),
    );
  }
}