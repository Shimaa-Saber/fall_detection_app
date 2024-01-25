import '../constants/constants.dart';
// import '..\constants\constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.Controller,
    required this.validator,
    required this.keyboardType,
    required this.text,
    required this.onChanged,
    this.obscureText = false,
  });
  TextEditingController Controller;

  //  TextEditingController _lController;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  final String text;
  Function(String)? onChanged;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: Controller,
      // autocorrect: true,
      // validator: (value) {
      //   if (value!.isEmpty || !value.contains('@') || !value.contains('.')) {
      //     return ('You must enter your email');
      //   } else {
      //     return null;
      //   }
      // },
      validator: validator,
      keyboardType: keyboardType,
      style: GoogleFonts.aBeeZee(),
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: GoogleFonts.aBeeZee(
          color: Colors.grey,
        ),
        hintText: text,
        hintStyle: GoogleFonts.aBeeZee(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(30),
        //   borderSide: BorderSide(
        //     color: AppColors.kPrimaryColor,
        //   ),
        // ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
