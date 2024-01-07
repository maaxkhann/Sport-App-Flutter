import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import '../../constant_widgets/constant_button.dart';
import 'local_pickup_games_screen2.dart';

class LocalPickUpGamesScreen extends StatelessWidget {
  const LocalPickUpGamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.055, vertical: Get.height * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: SvgPicture.asset(
                          'assets/common-icons/arrow-back.svg',
                          width: 9,
                          height: 16,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: Get.width * 0.25),
                        child: const Text(
                          'Pick up games',
                          style: kHeading3,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/common-icons/notification.svg',
                          width: 17,
                          height: 22,
                        ),
                      )
                    ]),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                SvgPicture.asset(
                  'assets/local-pickup-games-icons/amico.svg',
                  width: 181,
                  height: 172,
                  color: const Color(0xFFC7C9D9),
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                const Text(
                  'You do not have any games yet',
                  style: kHeading3,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Text(
                  'Create a team, invites  friends in your local Community, schedule a location, meet to play your favorite game.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Get.height * 0.15,
                ),
                ConstantButton(
                  onTap: () {
                    Get.to(() => const LocalPickUpGamesScreen2());
                  },
                  text: 'Schedule a game',
                  textColor: Colors.white,
                  buttonColor: const Color(0xFF3088F4),
                  width: Get.width * 0.5,
                  height: Get.height * 0.08,
                  borderRadius: 28,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
