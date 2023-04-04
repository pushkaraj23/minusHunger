import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minushunger/components/button.dart';
import 'package:minushunger/components/textfield.dart';
import 'package:minushunger/pages/welcome.dart';
import 'package:minushunger/pages/signup.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background/login-main.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 400),
            Text(
                  'WELCOMES YOU !',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
            SizedBox(height: 40),
            MytextField(textName: 'Username', controller: usernameController, hintText: 'eg. abc241', obscureText: false),
            SizedBox(height: 20),
            MytextField(textName: 'Password', controller: passwordController, hintText: 'eg. dufi\$@12x3', obscureText: true),
            SizedBox(height: 10),
            Padding(
                  padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF558855),
                      decoration: TextDecoration.underline
                    ),
                  ),
                ),
              SizedBox(height: 25,),
              SignUpButton(textButton: 'Sign In'),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    'Don\'t have an account?',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF558855),
                    ),
                  ),
                  SizedBox(width: 5),
                  RichText(
                        text: TextSpan(
                            text: 'Sign Up',
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF558855),
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpFirst()),
                                );
                              })),
                ],)
          ]),
        ),
      ),
    );
  }
}