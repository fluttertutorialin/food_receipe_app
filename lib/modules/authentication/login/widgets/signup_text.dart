import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/authentication/signup/signup_screen.dart';

Widget loginText(BuildContext context) {
  return GestureDetector(
    onTap: () {
      context.pushScreenTo(SignupPage());
    },
    child: const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have an account? ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          TextSpan(
            text: 'Sign up',
            style: TextStyle(
              color: Color(0xFFFF9B00),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    ),
  );
}
