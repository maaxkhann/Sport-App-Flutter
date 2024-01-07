import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import '../../constant_widgets/constant_button.dart';
import '../../constant_widgets/constant_textfield.dart';
import '../splash/splash_screen2.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordVisible = true;
  bool isConfirmVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.12, vertical: Get.height * 0.06),
              child: Image.asset(
                'assets/splash-auth-icons/Group 3090.png',
                width: double.infinity,
                height: Get.height * 0.47,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: Get.height * 0.2),
                width: double.infinity,
                height: 642,
                decoration: const BoxDecoration(
                    color: Color(0xFF222232),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42))),
                child: Padding(
                  padding: EdgeInsets.only(
                      //  top: Get.height * 0.1,
                      left: Get.width * 0.07,
                      right: Get.width * 0.07),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        const Text('Sign Up to get started', style: kHeading2),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        const ConstantTextField(
                          hintText: 'Email',
                          prefixIcon: 'assets/splash-auth-icons/email.svg',
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        ConstantTextField(
                          isPasswordVisible: isPasswordVisible,
                          hintText: 'Password',
                          prefixIcon: 'assets/splash-auth-icons/password.svg',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: isPasswordVisible
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility)),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        ConstantTextField(
                          isPasswordVisible: isConfirmVisible,
                          hintText: 'Confirm Password',
                          prefixIcon: 'assets/splash-auth-icons/password.svg',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isConfirmVisible = !isConfirmVisible;
                                });
                              },
                              icon: isConfirmVisible
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility)),
                        ),
                        SizedBox(
                          height: Get.height * 0.035,
                        ),
                        const Center(
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFC7C9D9),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.035,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/splash-auth-icons/google-icon.svg',
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/splash-auth-icons/facebook-icon.svg',
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/splash-auth-icons/twitter-icon.svg',
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ]),
                        SizedBox(height: Get.height * 0.035),
                        ConstantButton(
                            onTap: () {
                              Get.to(() => const SplashScreen2());
                            },
                            text: 'Sign Up',
                            textColor: Colors.white,
                            buttonColor: const Color(0xFF1566C9),
                            width: double.infinity,
                            height: Get.height * 0.085),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: kHeading6,
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => const LoginScreen());
                                },
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
