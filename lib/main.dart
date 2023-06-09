import 'package:coffe_app/presentation/screens/login_screen.dart';
import 'package:coffe_app/presentation/screens/register_screen.dart';
import 'package:coffe_app/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => const WelcomeScren(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
      },
    );
  }
}
