import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/splash/widgets/splash2_category_widget.dart';

import '../../constant_widgets/bottom_nav_bar_widget.dart';
import '../../constant_widgets/constant_button.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: Get.height * .04,
              left: Get.width * .06,
              right: Get.width * .06),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'What sport\ninterests you?',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const Text("You can choose more than one", style: kHeading5),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Splash2CategoryWidget(
                      imagePath: 'assets/category/soccer.png',
                      containerColor: Color(0xFF1566C9),
                      text: 'Soccer',
                    ),
                    Splash2CategoryWidget(
                        imagePath: 'assets/category/basketball.png',
                        containerColor: Color(0xFF222232),
                        text: 'Basketball'),
                    Splash2CategoryWidget(
                        imagePath: 'assets/category/football.png',
                        containerColor: Color(0xFF222232),
                        text: 'Football')
                  ],
                ),
                SizedBox(height: Get.height * .03),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Splash2CategoryWidget(
                        imagePath: 'assets/category/baseball.png',
                        containerColor: Color(0xFF222232),
                        text: 'Baseball'),
                    Splash2CategoryWidget(
                        imagePath: 'assets/category/tennis.png',
                        containerColor: Color(0xFF222232),
                        text: 'Tennis'),
                    Splash2CategoryWidget(
                        imagePath: 'assets/category/volleyball.png',
                        containerColor: Color(0xFF222232),
                        text: "Volleyball"),
                  ],
                ),
                SizedBox(height: Get.height * 0.18),
                ConstantButton(
                  onTap: () {
                    Get.to(() => const BottomNavigationBarWidget());
                  },
                  text: 'Continue',
                  textColor: kWhite,
                  buttonColor: const Color(0xFF1566C9),
                  width: Get.width,
                  height: Get.height * 0.085,
                ),
                SizedBox(height: Get.height * 0.02),
                Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Skip', style: kHeading4)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
