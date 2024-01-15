import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/screens/chat/widgets/message_bar.dart';
import 'package:sports_app/screens/chat/widgets/single_chat_container.dart';

import 'widgets/single_chat_appBar.dart';

class SingleChatScreen extends StatelessWidget {
  const SingleChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBG,
        appBar: const SingleChatAppBar(),
        body: ListView(
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
              height: Get.height * 0.02,
            ),
            const SingleChatContainer(
              text:
                  'Hi Zara, Wonderful to meet you. How about we watch our Next home  game together at Anfield? 😄',
              imageUrl: 'assets/common-icons/person.png',
              time: '2:55pm',
              topLeftRadius: 0,
              prefixImage: true,
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            const SingleChatContainer(
              text:
                  'Hey John, That sounds really awesome. would really look forward to it. 😄',
              imageUrl: 'assets/common-icons/person.png',
              time: '2:55pm',
              containerColor: Color(0xFF2B2B3D),
              bottomRightRadius: 0,
              prefixImage: false,
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            const SingleChatContainer(
                text:
                    'Hi Zara, Wonderful to meet you. How about we watch our Next home  game together at Anfield? 😄',
                imageUrl: 'assets/common-icons/person.png',
                time: '2:55pm',
                voice: 'assets/voice feature-poll feature/voiceNote.png',
                topLeftRadius: 0,
                prefixImage: true),
            SizedBox(
              height: Get.height * 0.04,
            ),
            const SingleChatContainer(
              text:
                  'Hey John, That sounds really awesome. would really look forward to it. 😄',
              imageUrl: 'assets/common-icons/person.png',
              time: '2:55pm',
              containerColor: Color(0xFF2B2B3D),
              bottomRightRadius: 0,
              prefixImage: false,
            ),
            SizedBox(
              height: Get.height * 0.17,
            ),
            const CustomMessageBar(),
          ],
        ),
      ),
    );
  }
}
