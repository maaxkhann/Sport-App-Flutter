import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/chat/group_chat_screen.dart';
import 'package:sports_app/screens/chat/widgets/videocall_container.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/chat-icons/image2.png',
              width: double.infinity,
              height: Get.height * 1,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                Row(
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
                              horizontal: Get.width * 0.07),
                          child: SvgPicture.asset(
                            'assets/common-icons/arrow-back.svg',
                            height: Get.height * 0.025,
                            width: Get.height * 0.025,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    const Text(
                      'Davidson',
                      style: kHeading3,
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              right: Get.width * 0.07,
              top: Get.height * 0.1,
              child: Container(
                width: Get.width * 0.39,
                height: Get.height * 0.22,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan, width: 2),
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white70),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    'assets/chat-icons/image1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VideoCallContainer(
                      image: 'assets/chat-icons/call.svg',
                      color: const Color(0xFFFE3535),
                      onTap: () {
                        Get.back();
                        Get.back();
                      }),
                  const VideoCallContainer(
                    image: 'assets/chat-icons/volume-high.svg',
                    color: Colors.white60,
                  ),
                  const VideoCallContainer(
                      image: 'assets/chat-icons/icon _flip camera ios.svg',
                      color: Colors.white60),
                  const VideoCallContainer(
                    image: 'assets/chat-icons/call.svg',
                    color: Colors.white60,
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
