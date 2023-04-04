import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minushunger/pages/login.dart';
import 'package:minushunger/pages/signUp-personal.dart';

class SignUpFirst extends StatelessWidget {
  const SignUpFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background/signUp-1.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 300),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let\'s Get You Started !!',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'What type of account do\nyou want to open ?',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xFF558855),
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 140,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(213, 255, 255, 255),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(66, 0, 0, 0),
                              blurRadius: 3,
                              offset: Offset(1, 5),
                            )
                          ]),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Image.asset('assets/images/icons/person.png'),
                        ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalSignUp()));
                    },
                  ),
                ),
              ),
              SizedBox(width: 30),
              SizedBox(
                height: 150,
                width: 150,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF7CD796),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(66, 0, 0, 0),
                              blurRadius: 3,
                              offset: Offset(1, 5),
                            )
                          ]),
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Image.asset('assets/images/icons/people.png'),
                        ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalSignUp()));
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 75),
              Text(
                'Personal',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  decoration: TextDecoration.none
                ),
              ),
              SizedBox(width: 68),
              Text(
                'Organization',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  decoration: TextDecoration.none
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF558855),
                      decoration: TextDecoration.none
                    ),
                  ),
                  SizedBox(width: 5),
                  RichText(
                        text: TextSpan(
                            text: 'Sign In',
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
                                      builder: (context) => LoginPage()),
                                );
                              })),
                ],)
        ],
      ),
    );
  }
}
