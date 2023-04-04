import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minushunger/components/button.dart';
import 'package:minushunger/components/textfield.dart';

class AlmostTherePersonal extends StatefulWidget {
  const AlmostTherePersonal({super.key});

  @override
  State<AlmostTherePersonal> createState() => _AlmostTherePersonalState();
}

class _AlmostTherePersonalState extends State<AlmostTherePersonal> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background/signUp-3.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 100,
                child: Image.asset('assets/images/icons/person2.png'),
              ),
            ),
            SizedBox(height: 35),
            Text('      You\'re Almost There !',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                )),
            SizedBox(height: 120),
            MytextField(
                textName: 'Username',
                controller: usernameController,
                hintText: 'eg. abc124',
                obscureText: false),
            SizedBox(height: 15),
            MytextField(
                textName: 'Password',
                controller: passwordController,
                hintText: 'eg. foux#2fn14\$',
                obscureText: true),
            SizedBox(height: 15),
            MytextField(
                textName: 'Confirm Password',
                controller: cpasswordController,
                hintText: '',
                obscureText: true),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignUpButton(textButton: 'Create Account'),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
