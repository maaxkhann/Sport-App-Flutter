import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/live/livestream_screen.dart';

class LiveScreenStackWidget extends StatelessWidget {
  const LiveScreenStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const LiveStreamScreen()),
      child: Ink.image(
        image: const AssetImage('assets/live-icons/image 158.png'),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              width: 220,
              height: 164,
              decoration: BoxDecoration(
                  color: const Color(0xFF242433),
                  borderRadius: BorderRadius.circular(12)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: EdgeInsets.only(bottom: Get.height * 0.03),
                  child: Image.asset(
                    'assets/live-icons/image 158.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
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
                bottom: Get.height * 0.045,
                child: SvgPicture.asset(
                  'assets/live-icons/pause.svg',
                  width: 20,
                  height: 20,
                )),
            Positioned(
                right: Get.width * 0.05,
                bottom: Get.height * 0.045,
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
            const Positioned(
              bottom: 7,
              left: 8,
              child: Text(
                'Everton vs Leeds | Premier league',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
