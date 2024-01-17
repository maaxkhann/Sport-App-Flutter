import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class AudioCallScreen extends StatelessWidget {
  const AudioCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/chat-icons/image.png',
              width: double.infinity,
              height: Get.height * 1,
              fit: BoxFit.cover,
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Get.height * 0.025, horizontal: Get.width * 0.06),
                child: SvgPicture.asset(
                  'assets/common-icons/arrow-back.svg',
                  height: Get.height * 0.025,
                  width: Get.height * 0.025,
                ),
              ),
            ),
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.04),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Zara',
                        style: kHeading3,
                      ),
                      Text(
                        'Calling...',
                        style: kHeading7,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.032,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color(0xFF6B7588),
                  child: CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/chat-icons/user1.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/chat-icons/volume-high.svg',
                            height: 28,
                          ),
                          const Text(
                            'Speaker',
                            style: kHeading6,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/chat-icons/video.svg',
                            height: 28,
                          ),
                          const Text(
                            'Video',
                            style: kHeading6,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/chat-icons/microphone-slash.svg',
                            height: 28,
                          ),
                          const Text(
                            'Mute',
                            style: kHeading6,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.09,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/chat-icons/record-circle.svg',
                            height: 28,
                          ),
                          const Text(
                            'Record',
                            style: kHeading6,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/chat-icons/pause-circle.svg',
                            height: 28,
                          ),
                          const Text(
                            'Hold',
                            style: kHeading6,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/chat-icons/ri-user-add-line.svg',
                            height: 28,
                          ),
                          const Text(
                            'Add Call',
                            style: kHeading6,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Get.width * 0.15,
                height: Get.height * 0.15,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.red),
                child: const Icon(
                  Icons.call_end,
                  color: kWhite,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
