import 'package:flutter/material.dart';
import 'package:minushunger/pages/welcome.dart';
import 'pages/login.dart';
import 'pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(context) => LoginPage(),
        'signup':(context) => SignupPage(),
        'signup1':(context) => SignUpFirst()
      }
    );
  }
}