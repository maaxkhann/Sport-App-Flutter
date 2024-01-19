import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/constant_widgets/bottom_nav_bar_widget.dart';
import 'package:sports_app/constant_widgets/constant_round_button.dart';
import 'package:sports_app/screens/live/liveScreen2.dart';

class LiveScreenAppBar extends StatelessWidget {
  const LiveScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.offAll(const BottomNavigationBarWidget());
          },
          child: SizedBox(
            height: Get.height * 0.025,
            width: Get.height * 0.025,
            child: SvgPicture.asset('assets/common-icons/arrow-back.svg'),
          ),
        ),
        SizedBox(
          width: Get.width * 0.060,
        ),
        const Text(
          'Livestream',
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w700,
              color: Color(0xFFFFFFFF)),
        ),
        const Spacer(),
        SizedBox(
          height: Get.height * 0.034,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: SvgPicture.asset(
                'assets/common-icons/notification.svg',
              ),
            ),
          ),
        ),
        RoundButton(
            onPressed: () => Get.to(() => const LiveScreen2()),
            buttonColor: const Color(0xFFE53535),
            titleColor: Colors.white,
            title: 'Go Live')
      ],
    );
  }
}
