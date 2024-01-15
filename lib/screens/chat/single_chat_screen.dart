import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/screens/chat/widgets/custom_message_bar.dart';
import 'package:sports_app/screens/chat/widgets/single_chat_container.dart';

import 'widgets/single&group_chat_appBar.dart';

class SingleChatScreen extends StatelessWidget {
  const SingleChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBG,
          appBar: const SingleAndGroupChatAppBar(
            title: 'Zara @ZaraMeyers',
            subTitle: 'Online',
            imageUrl: 'assets/chat-icons/User.png',
          ),
          body: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 12,
                          endIndent: 6,
                          color: Color(0xFF6B7588),
                        ),
                      ),
                      Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFC7C9D9)),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 6,
                          endIndent: 12,
                          color: Color(0xFF6B7588),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  const SingleChatContainer(
                    text:
                        'Hi Zara, Wonderful to meet you. How about we watch our Next home  game together at Anfield? 😄',
                    imageUrl: 'assets/chat-icons/User.png',
                    time: '2:55pm',
                    topLeftRadius: 0,
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  const SingleChatContainer(
                    text:
                        'Hey John, That sounds really awesome. would really look forward to it. 😄',
                    imageUrl: 'assets/chat-icons/User.png',
                    time: '2:55pm',
                    containerColor: Color(0xFF2B2B3D),
                    bottomRightRadius: 0,
                    isPrefixImage: false,
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  const SingleChatContainer(
                    text:
                        'Hi Zara, Wonderful to meet you. How about we watch our Next home  game together at Anfield? 😄',
                    imageUrl: 'assets/chat-icons/User.png',
                    time: '2:55pm',
                    voice: 'assets/voice feature-poll feature/voiceNote.png',
                    topLeftRadius: 0,
                    isPrefixImage: false,
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  const SingleChatContainer(
                    text:
                        'Hey John, That sounds really awesome. would really look forward to it. 😄',
                    imageUrl: 'assets/chat-icons/User.png',
                    time: '2:55pm',
                    containerColor: Color(0xFF2B2B3D),
                    bottomRightRadius: 0,
                  ),
                  SizedBox(
                    height: Get.height * 0.28,
                  ),
                ],
              ),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: CustomMessageBar(),
                  )),
            ],
          )),
    );
  }
}
