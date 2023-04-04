import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minushunger/components/textFieldSmall.dart';
import 'package:minushunger/components/textfield.dart';
import 'package:minushunger/pages/almosthere.dart';

class PersonalSignUp extends StatefulWidget {
  PersonalSignUp({super.key});

  @override
  State<PersonalSignUp> createState() => _PersonalSignUpState();
}

class _PersonalSignUpState extends State<PersonalSignUp> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background/signUp-2.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 105),
              Row(children: [
                SizedBox(width: 30),
                SizedBox(
                    height: 30,
                    child: Image.asset('assets/images/icons/person2.png')),
                SizedBox(width: 10),
                Text('Personal Details',
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.w600))
              ]),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldSmall(
                      textName: 'First Name',
                      controller: nameController,
                      hintText: '',
                      obscureText: false),
                  SizedBox(width: 20),
                  TextFieldSmall(
                      textName: 'Last Name',
                      controller: surnameController,
                      hintText: '',
                      obscureText: false),
                ],
              ),
              MytextField(
                  textName: 'Phone No.',
                  controller: phoneController,
                  hintText: '',
                  obscureText: false),
              SizedBox(height: 15),
              MytextField(
                  textName: 'Email',
                  controller: emailController,
                  hintText: '',
                  obscureText: false),
              SizedBox(height: 15),
              MytextField(
                  textName: 'Address',
                  controller: addressController,
                  hintText: '',
                  obscureText: false),
              SizedBox(height: 30),
              SizedBox(
                width: 330,
                height: 65,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(219, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(45, 0, 0, 0),
                            blurRadius: 7,
                            offset: Offset(0, 8))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 33,
                          child:
                              Image.asset('assets/images/icons/location.png')),
                      SizedBox(width: 10),
                      Text(
                        'Choose Location on Maps',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF558855)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                          Text(
                            'Donor',
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF558855)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                          Text('Receiver',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF558855))),
                        ],
                      ),
                    ],
                  ),

                  InkWell(
                    child: SizedBox(
                      height: 100,
                      child: Image.asset('assets/images/icons/nextpage.png')
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AlmostTherePersonal()));
                    },
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}