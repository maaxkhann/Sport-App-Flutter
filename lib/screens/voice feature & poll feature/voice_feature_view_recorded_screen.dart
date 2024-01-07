import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/voice%20feature%20&%20poll%20feature/voice_feature_viewpost_screen.dart';

import '../../constant_widgets/constant_round_button.dart';

class VoiceFeatureViewRecorded extends StatelessWidget {
  const VoiceFeatureViewRecorded({super.key});

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
                      onPressed: () {
                        Get.to(const VoiceFeatureViewPost());
                      },
                      buttonColor: const Color(0xFF1566C9),
                      titleColor: const Color(0xFFFFFFFF),
                      title: 'Done')
                ],
              ),
              SizedBox(
                height: Get.height * 0.20,
              ),
              Container(
                height: Get.height * 0.16,
                width: Get.width * 0.4,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/voice feature-poll feature/voiceAvatar.png',
                    ))),
              ),
              SizedBox(
                height: Get.height * 0.060,
              ),
              Text(
                'Recording',
                style: headingTextStyle,
              ),
              SizedBox(
                height: Get.height * 0.010,
              ),
              Text(
                '01:22',
                style: bodyTextStyle,
              ),
              SizedBox(
                height: Get.height * 0.070,
              ),
              SizedBox(
                child: Image.asset(
                    'assets/voice feature-poll feature/voiceNote.png'),
              ),
              SizedBox(
                height: Get.height * 0.070,
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 84,
                  width: 84,
                  child: Image.asset(
                      'assets/voice feature-poll feature/pauseButton.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle headingTextStyle = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Color(0xFFFFFFFF),
);

TextStyle bodyTextStyle = const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Color(0xFFC7C9D9),
);
