import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpButton extends StatelessWidget {
  final String textButton;
  const SignUpButton({super.key,
  required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 65,
      decoration: BoxDecoration(
          color: Color(0xFF558855),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(136, 0, 0, 0),
              blurRadius: 10,
              offset: Offset(0, 4),
            )
          ]),
      child: Center(
        child: Text(
          textButton,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
