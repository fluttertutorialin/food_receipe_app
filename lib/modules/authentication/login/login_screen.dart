import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/authentication/login/login_provider.dart';
import 'package:food_receipe_app/modules/authentication/login/widgets/icon_widget.dart';
import 'package:food_receipe_app/modules/authentication/login/widgets/signup_text.dart';
import 'package:food_receipe_app/modules/bottomnav/bottom_nav.dart';
import 'package:icons_plus/icons_plus.dart';
// import '';
import '/core/core_widgets/widget_links.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginRead = ref.read(loginProvider);
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
                  text: "Hello,",
                  color: ColorConstants.blackColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
              Spaces.smallh,
              customTextWidget(
                  text: "Welcome Back!",
                  color: ColorConstants.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
              Spaces.large,
              customTextWidget(
                  text: "Email",
                  color: ColorConstants.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextField(
                  hintText: 'Enter Email', controller: loginRead.email),
              Spaces.large,
              customTextWidget(
                  text: "Enter Password",
                  color: ColorConstants.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextField(
                  hintText: 'Enter Password', controller: loginRead.password),
              Spaces.mid,
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: customTextWidget(
                    text: "Forget Password?",
                    color: const Color(0xFFFF9B00),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
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
                              text: 'Sign In',
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
              Align(alignment: Alignment.center, child: loginText(context)),
            ],
          ),
        ),
      ),
    );
  }
}
