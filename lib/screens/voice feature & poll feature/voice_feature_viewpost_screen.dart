import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constant_widgets/constant_round_button.dart';

class VoiceFeatureViewPost extends StatelessWidget {
  const VoiceFeatureViewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF181829),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  RoundButton(
                      onPressed: () => Get.back(),
                      buttonColor: const Color(0xFFCED0D2),
                      titleColor: const Color(0xFF6B7588),
                      title: 'Cancel'),
                  const Spacer(),
                  RoundButton(
                      onPressed: () {},
                      buttonColor: const Color(0xFF1566C9),
                      titleColor: const Color(0xFFFFFFFF),
                      title: 'Done')
                ],
              ),
              SizedBox(
                height: Get.height * 0.060,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/voice feature-poll feature/voiceAvatar.png'))),
                  ),
                  SizedBox(
                    width: Get.width * 0.030,
                  ),
                  Expanded(
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      maxLines: null,
                      decoration: const InputDecoration(
                        hintText: 'Type here',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.020,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: Get.width * 0.13),
                decoration: BoxDecoration(
                    color: const Color(0xFFAC5DD9),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '1/1',
                            style: bodyTextStyle,
                          ),
                          const Spacer(),
                          const SizedBox(
                            height: 24,
                            width: 24,
                            child: Icon(Icons.cancel),
                          )
                        ],
                      ),
                      SizedBox(height: Get.height * 0.012),
                      SizedBox(
                        height: 75,
                        width: 75,
                        child: Image.asset(
                            'assets/voice feature-poll feature/voiceAvatar.png'),
                      ),
                      SizedBox(height: Get.height * 0.012),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '2:17secs',
                          style: bodyTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.020),
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.13),
                child: Row(
                  children: [
                    SizedBox(
                      height: 18,
                      width: 18,
                      child: SvgPicture.asset('assets/common-icons/emoji.svg'),
                    ),
                    SizedBox(width: Get.width * 0.020),
                    SizedBox(
                      height: 18,
                      width: 18,
                      child:
                          SvgPicture.asset('assets/common-icons/gallery.svg'),
                    ),
                    SizedBox(width: Get.width * 0.020),
                    SizedBox(
                      height: 18,
                      width: 18,
                      child: SvgPicture.asset('assets/common-icons/chart.svg'),
                    ),
                    SizedBox(width: Get.width * 0.020),
                    SizedBox(
                      height: 18,
                      width: 18,
                      child:
                          SvgPicture.asset('assets/common-icons/location.svg'),
                    ),
                    SizedBox(width: Get.width * 0.020),
                    SizedBox(
                      height: 18,
                      width: 18,
                      child: SvgPicture.asset(
                          'assets/common-icons/microphone.svg'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle bodyTextStyle = const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Color(0xFFC7C9D9),
);
