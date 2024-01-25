import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
// import '..\constants\constants.dart';
import 'package:flutter/material.dart';

class RegisterContainer extends StatelessWidget {
  const RegisterContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.38,
      decoration: const BoxDecoration(
        color: AppColors.kSecondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 105,
            top: 40,
            child: Container(
              width: 157,
              height: 134,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/RegisterImage.png"),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
          ),
          Positioned(
            left: 77,
            top: 201,
            child: Text(
              'FallGuard Caregiver',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            left: 39,
            top: 247,
            child: Text(
              'Sign up now to be a caregiver for humanity',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
