import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/authentication/login/login_screen.dart';

Widget signUpText(BuildContext context) {
  return GestureDetector(
    onTap: () {
      context.pushScreenTo(LoginPage());
    },
    child: const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Already a member? ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          TextSpan(
            text: 'Sign In',
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
