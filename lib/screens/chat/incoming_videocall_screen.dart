import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/chat/videocall_screen.dart';

import 'widgets/videocall_container.dart';

class InComingVideoCallScreen extends StatelessWidget {
  const InComingVideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/chat-icons/image1.png',
              width: double.infinity,
              height: Get.height * 1,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Get.height * 0.025,
                          horizontal: Get.width * 0.06),
                      child: SvgPicture.asset(
                        'assets/common-icons/arrow-back.svg',
                        height: Get.height * 0.025,
                        width: Get.height * 0.025,
                      ),
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Incoming call',
                      style: kHeading7,
                    ),
                    Text(
                      'Davidson',
                      style: kHeading3,
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VideoCallContainer(
                    image: 'assets/chat-icons/call.svg',
                    color: const Color(0xFFFE3535),
                    onTap: () => Get.back(),
                  ),
                  const VideoCallContainer(
                    image: 'assets/chat-icons/volume-high.svg',
                    color: Colors.white60,
                  ),
                  const VideoCallContainer(
                      image: 'assets/chat-icons/microphone-slash.svg',
                      color: Colors.white60),
                  VideoCallContainer(
                    image: 'assets/chat-icons/call.svg',
                    color: const Color(0xFF2EC76B),
                    onTap: () => Get.to(() => const VideoCallScreen()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
