import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/screens/voice%20feature%20&%20poll%20feature/voice_feature_screen.dart';

import '../../voice feature & poll feature/poll_feature_screen.dart';

class WhatsHappeningWidget extends StatelessWidget {
  const WhatsHappeningWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF222232).withOpacity(0.7),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What's happening?",
              style: TextStyle(fontSize: 10, color: kWhite),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Row(
                  children: [
                    InkWell(
                        splashColor: Colors.white,
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/common-icons/emoji.svg',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        splashColor: Colors.white,
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/common-icons/gallery.svg',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        splashColor: Colors.white,
                        onTap: () => Get.to(const PollFeatureScreen()),
                        child: SvgPicture.asset(
                          'assets/common-icons/chart.svg',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        splashColor: Colors.white,
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/common-icons/location.svg',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        splashColor: Colors.white,
                        onTap: () => Get.to(() => const VoiceFeatureScreen()),
                        child: SvgPicture.asset(
                          'assets/common-icons/microphone.svg',
                        )),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text(
                        'Post',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
