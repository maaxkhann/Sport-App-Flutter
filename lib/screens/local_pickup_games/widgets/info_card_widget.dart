
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../local_pickup_games_screen3.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF2B2B3D),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFC7C9D9))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Row(
            children: [
              const Text(
                'Jayflexy 5 aside',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              SizedBox(
                child: Image.asset('assets/category/basketball.png', width: 20, height: 20,),
              ),
              SizedBox(width: Get.width * 0.030),
              const Text(
                'Basketball',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.020),
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset('assets/common-icons/location.svg'),
              ),
              SizedBox(width: Get.width * 0.030),
              Text(
                'Location',
                style: bodyTextStyle,
              ),
              const Spacer(),
              Text(
                'Villa Court, 12, boston strt.\nBradford',
                softWrap: true,
                style: bodyTextStyle,
              )
            ],
          ),
          SizedBox(height: Get.height * 0.020),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset('assets/common-icons/calendar.svg'),
              ),
              SizedBox(width: Get.width * 0.030),
              Text(
                'Date',
                style: bodyTextStyle,
              ),
              const Spacer(),
              Text(
                '25th, May 2023 : 8am',
                softWrap: true,
                style: bodyTextStyle,
              )
            ],
          ),
          SizedBox(height: Get.height * 0.020),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset('assets/common-icons/profile.svg'),
              ),
              SizedBox(width: Get.width * 0.030),
              Text(
                'Players',
                style: bodyTextStyle,
              ),
              const Spacer(),
              SizedBox(
                width: 60,
                child: Stack(
                  children: [
                    Container(
                      height: 26,
                      width: 26,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/local-pickup-games-icons/playerAvatar.png'))),
                    ),
                    Positioned(
                      left: 17,
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/local-pickup-games-icons/playerAvatar.png'))),
                      ),
                    ),
                    Positioned(
                      left: 34,
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/local-pickup-games-icons/playerAvatar.png'))),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Jayflex and 4 others',
                style: bodyTextStyle,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}