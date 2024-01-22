import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class LiveStreamStackWidget extends StatelessWidget {
  const LiveStreamStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                width: double.infinity,
                //  height: Get.height * 0.3,
                decoration: BoxDecoration(
                    color: const Color(0xFF242433),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/live-icons/image 158.png',
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Everton vs Leeds | Premier league',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Flexible(
                              fit: FlexFit.tight,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.volume_down,
                                    color: kWhite,
                                    size: 20,
                                  ),
                                  Text(
                                    'Listen',
                                    style: kHeading7,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: Get.height * 0.02,
                          bottom: Get.height * 0.02,
                          left: Get.width * 0.03,
                          right: Get.width * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white, // Color of the underline
                                  width: 2.0, // Thickness of the underline
                                ),
                              ),
                            ),
                            child: const Text(
                              'Match',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: kWhite,
                                decoration:
                                    TextDecoration.underline, // Add underline
                              ),
                            ),
                          ),
                          const Text(
                            'Match details',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFCED0D2)),
                          ),
                          const Text(
                            'Match stat',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFCED0D2)),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
                right: Get.width * 0.055,
                top: Get.height * 0.04,
                child: const Row(
                  children: [
                    Icon(
                      Icons.visibility,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '446K',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                )),
            Positioned(
                left: Get.width * 0.05,
                bottom: Get.height * 0.14,
                child: SvgPicture.asset(
                  'assets/live-icons/pause.svg',
                  width: 20,
                  height: 20,
                )),
            Positioned(
                right: Get.width * 0.05,
                bottom: Get.height * 0.14,
                child: Row(
                  children: [
                    const Icon(
                      Icons.volume_mute_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      'assets/live-icons/maximize2.svg',
                      width: 16,
                      height: 16,
                    ),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
