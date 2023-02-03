import 'package:knoxxbox/helpers/constants.dart';
import 'package:knoxxbox/helpers/themes.dart';
import 'package:knoxxbox/screens/home_page.dart';
import 'package:knoxxbox/screens/signin_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      themeMode: ThemeMode.light,
      theme: theme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/signin': (context) => const SignInPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
