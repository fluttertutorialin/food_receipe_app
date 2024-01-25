import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/authentication/login/widgets/icon_widget.dart';
import 'package:food_receipe_app/modules/authentication/signup/signup_provider.dart';
import 'package:food_receipe_app/modules/authentication/signup/widgets/signup_text.dart';
import 'package:food_receipe_app/modules/bottomnav/bottom_nav.dart';
import 'package:icons_plus/icons_plus.dart';
// import '';
import '/core/core_widgets/widget_links.dart';

class SignupPage extends ConsumerWidget {
  SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupRead = ref.read(signupProvider);
    final signupWatch = ref.watch(signupProvider);
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: ColorConstants.whiteColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spaces.extrasmall,
              customTextWidget(
                  text: "Create an account",
                  color: ColorConstants.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              Spaces.smallh,
              customTextWidget(
                  text:
                      "Let’s help you set up your account,\nit won’t take long.",
                  color: ColorConstants.blackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
              Spaces.large,
              customTextWidget(
                  text: "Name",
                  color: ColorConstants.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextField(
                  hintText: 'Enter Name', controller: signupRead.name),
              Spaces.large,
              customTextWidget(
                  text: "Email",
                  color: ColorConstants.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextField(
                  hintText: 'Enter Email', controller: signupRead.email),
              Spaces.large,
              customTextWidget(
                  text: "Enter Password",
                  color: ColorConstants.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextField(
                  hintText: 'Enter Password', controller: signupRead.password),
              Spaces.large,
              customTextWidget(
                  text: "Confirm Password",
                  color: ColorConstants.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextField(
                  hintText: 'Retype Password',
                  controller: signupRead.cfpassword),
              Spaces.mid,
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      side: const BorderSide(
                        width: 1.3,
                        color: Color(0xFFFF9B00),
                      ),
                      activeColor: const Color(0xFFFF9B00),
                      checkColor: ColorConstants.whiteColor,
                      hoverColor: const Color(0xFFFF9B00),
                      value: signupWatch.isCheckBox,
                      onChanged: (bool? value) {
                        signupRead.checkBoxUpdate(value!);
                      },
                    ),
                    customTextWidget(
                        text: "Accept terms & Condition",
                        color: const Color(0xFFFF9B00),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ],
                ),
              ),
              Spaces.large,
              customElevatedBtnWidget(
                  width: context.screenWidth,
                  height: 60,
                  child: Center(
                    child: SizedBox(
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextWidget(
                              text: 'Sign Up',
                              color: ColorConstants.whiteColor,
                              fontNameP: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          const Icon(
                            Icons.arrow_forward,
                            color: ColorConstants.whiteColor,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                  func: () {
                    context.pushScreenTo(UserNavBar());
                  }),
              Spaces.mid,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 50,
                    child: Divider(
                      color: Color(0xFFD9D9D9),
                      thickness: 0.6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: customTextWidget(
                        text: 'Or Sign in With',
                        color: const Color(0xFFD9D9D9),
                        fontNameP: 'Poppins',
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 50,
                    child: Divider(
                      color: Color(0xFFD9D9D9),
                      thickness: 0.6,
                    ),
                  ),
                ],
              ),
              Spaces.mid,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  iconsWidget(Brand(
                    Brands.google,
                    size: 10,
                  )),
                  Spaces.midw,
                  iconsWidget(Brand(
                    Brands.facebook,
                    size: 10,
                  ))
                ],
              ),
              Spaces.large,
              Align(alignment: Alignment.center, child: signUpText(context)),
              Spaces.large,
            ],
          ),
        ),
      ),
    );
  }
}
