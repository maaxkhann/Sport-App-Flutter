import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import '../auth/login_screen.dart';
import '../auth/signup_screen.dart';
import '../../constant_widgets/constant_button.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.1, vertical: Get.height * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/splash-auth-icons/Group 3090.png',
                width: double.infinity,
                height: Get.height * 0.48,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              const Text(
                'The best place\nfor Sport fans',
                style: kHeading1,
              ),
              const Text(
                'Connect and share your favourite\n'
                'Sport moment with like minds. Meet\n'
                'amazing Sport lovers from different  part of the world.',
                textAlign: TextAlign.left,
                style: kHeading5,
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstantButton(
                    onTap: () {
                      Get.to(() => const LoginScreen());
                    },
                    text: 'Sign In',
                    textColor: kWhite,
                    buttonColor: const Color(0xFF1566C9),
                    width: Get.width * 0.5,
                    height: Get.height * 0.085,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const SignUpScreen());
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8F90A6),
                            fontWeight: FontWeight.w400),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
