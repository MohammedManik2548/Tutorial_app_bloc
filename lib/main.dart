import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial_app_bloc/app_bloc.dart';
import 'package:tutorial_app_bloc/pages/my_home_page/my_home_page.dart';
import 'package:tutorial_app_bloc/pages/sign_in/sign_in.dart';
import 'package:tutorial_app_bloc/pages/welcom_screen/bloc/welcome_bloc.dart';
import 'package:tutorial_app_bloc/pages/welcom_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context)=> WelcomeBloc(),
          ),
          BlocProvider(
            create: (context)=> AppBloc(),
          ),
        ],
        child: ScreenUtilInit(
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                appBarTheme: const AppBarTheme(
                  elevation: 0,
                  backgroundColor: Colors.white,
                ),
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                useMaterial3: true,
              ),
              home: const WelcomeScreen(),
              routes: {
                "myHomePage": (context)=> const MyHomePage(),
                'signIn': (context)=> const SignIn(),
              },
            );
          },),
    );
  }
}

