import 'package:flutter/material.dart';

import 'Sign_In.dart';
import 'Sign_Up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFFF6600),
        scaffoldBackgroundColor: const Color(0xFFF5F6F8),
      ),
      home: const AuthTogglePage(),
    );
  }
}

class AuthTogglePage extends StatefulWidget {
  const AuthTogglePage({Key? key}) : super(key: key);

  @override
  State<AuthTogglePage> createState() => _AuthTogglePageState();
}

class _AuthTogglePageState extends State<AuthTogglePage> {
  bool showSignIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showSignIn
          ? SignInScreen(onToggle: () => setState(() => showSignIn = false))
          : SignUpScreen(onToggle: () => setState(() => showSignIn = true)),
    );
  }
}
