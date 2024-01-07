import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/local_pickup_games/widgets/info_card_widget.dart';
import 'package:sports_app/screens/local_pickup_games/widgets/invitation_card_widget.dart';

import '../../constant_widgets/constant_round_button.dart';

class LocalPickUpGamesScreen3 extends StatelessWidget {
  const LocalPickUpGamesScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kBG,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.046, vertical: Get.height * 0.02),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    'assets/common-icons/arrow-back.svg',
                    width: 9,
                    height: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.060,
                ),
                const Text(
                  'Pick up games',
                  style: kHeading3,
                ),
                const Spacer(),
                SizedBox(
                  height: Get.height * 0.035,
                  width: Get.height * 0.035,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/common-icons/notification.svg',
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: Get.height * 0.065,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your Pick up games',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF)),
                      ),
                      RoundButton(
                          onPressed: () {},
                          buttonColor: const Color(0xFF1566C9),
                          titleColor: const Color(0xFFFFFFFF),
                          title: 'Create')
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.030,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const InvitationCardWidget(),
                          SizedBox(
                            height: Get.height * 0.045,
                          ),
                          const InfoCardWidget(),
                          SizedBox(
                            height: Get.height * 0.045,
                          ),
                          const InfoCardWidget(),
                          SizedBox(
                            height: Get.height * 0.045,
                          ),
                          const InfoCardWidget(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

TextStyle bodyTextStyle = const TextStyle(
    fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFFFFFFFF));
