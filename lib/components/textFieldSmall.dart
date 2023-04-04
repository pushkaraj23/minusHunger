import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldSmall extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String textName;

  const TextFieldSmall (
      {super.key,
      required this.textName,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 100,
        width: 160,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '  ' + textName,
                  style: GoogleFonts.poppins(
                    color: Color(0xFF558855),
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              SizedBox(height: 3),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(
                    color: Color.fromARGB(45, 0, 0, 0),
                    blurRadius: 7,
                    offset: Offset(0, 8)
                  )]
                ),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  cursorColor: Color(0xFF558855),
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(219, 255, 255, 255),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.transparent
                          )
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xFF558855),
                          width: 3
                        )
                      ),
                      hintText: hintText,
                      hintStyle: GoogleFonts.openSans(
                          fontSize: 15, color: Colors.grey.shade800)),
                ),
              ),
            ],
          )),
    );
  }
}