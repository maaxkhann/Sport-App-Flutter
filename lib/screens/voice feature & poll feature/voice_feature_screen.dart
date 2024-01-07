import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/voice%20feature%20&%20poll%20feature/voice_feature_view_recorded_screen.dart';
import '../../constant_widgets/constant_round_button.dart';

class VoiceFeatureScreen extends StatelessWidget {
  const VoiceFeatureScreen({super.key});

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
                      title: 'Cancel')
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
                'What’s happening?',
                style: headingTextStyle,
              ),
              SizedBox(
                height: Get.height * 0.010,
              ),
              Text(
                'Click the microphone to record something.',
                style: bodyTextStyle,
              ),
              SizedBox(
                height: Get.height * 0.20,
              ),
              InkWell(
                onLongPress: () {
                  Get.to(const VoiceFeatureViewRecorded());
                },
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            '“Egnofilb” would like to access your microphone.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF3A3A3C),
                            ),
                          ),
                          titlePadding: const EdgeInsets.only(
                              left: 10, right: 10, top: 30, bottom: 10),
                          content: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Capture and post moments with sound.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8F90A6),
                                ),
                              ),
                              Divider(
                                color: Color(0xFFC7C9D9),
                              )
                            ],
                          ),
                          contentPadding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          actions: [
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      'Don\'t Allow',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF1566C9)
                                              .withOpacity(0.6)),
                                    )),
                                const Spacer(),
                                TextButton(
                                    onPressed: () => Get.back(),
                                    child: Text('It\'s OK',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF1566C9)
                                                .withOpacity(0.6)))),
                              ],
                            )
                          ],
                          actionsPadding:
                              const EdgeInsets.only(left: 10, right: 10),
                        );
                      });
                },
                child: SizedBox(
                  height: 84,
                  width: 84,
                  child: Image.asset(
                    'assets/voice feature-poll feature/voiceButton.png',
                  ),
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
