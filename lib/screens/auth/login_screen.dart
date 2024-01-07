import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/auth/signup_screen.dart';

import '../../constant_widgets/constant_button.dart';
import '../../constant_widgets/constant_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck = false;
  bool isPasswordVisible = true;

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
                  height: Get.height * 0.48,
                  fit: BoxFit.contain,
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Get.height * 0.58,
                decoration: const BoxDecoration(
                    color: Color(0xFF222232),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42))),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: Get.height * 0.01,
                      left: Get.width * 0.07,
                      right: Get.width * 0.07),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        const Text('Welcome', style: kHeading2),
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
                        SizedBox(height: Get.height * 0.02),
                        Row(
                          children: [
                            Checkbox(
                                value: isCheck,
                                onChanged: (value) {
                                  setState(() {
                                    isCheck = value!;
                                  });
                                }),
                            const Text(
                              'Remember me',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF65656B),
                                  fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Get.width * 0.12),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password',
                                  style: kHeading7,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: Get.height * 0.02),
                        ConstantButton(
                            onTap: () {},
                            text: 'Sign In',
                            textColor: kWhite,
                            buttonColor: const Color(0xFF1566C9),
                            width: double.infinity,
                            height: Get.height * 0.085),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have account?',
                              style: kHeading6,
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => const SignUpScreen());
                                },
                                child: const Text(
                                  'Sign Up',
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
