import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/chat/widgets/custom_message_bar.dart';
import 'package:sports_app/screens/chat/widgets/group_chat_container.dart';
import 'package:sports_app/screens/chat/widgets/single&group_chat_appBar.dart';
import 'package:sports_app/screens/chat/widgets/single_chat_container.dart';

class GroupChatScreen extends StatelessWidget {
  const GroupChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const SingleAndGroupChatAppBar(
            title: 'Never Walk Alone',
            subTitle: 'LexyJay, ThecoolLFC guy, MandyII, Designgod, Rexy....',
            imageUrl: 'assets/chat-icons/image 184.png',
            isTrue: true,
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
                  const GroupChatContainer(
                    name: 'ThatCoolLFCguy',
                    message:
                        'That was an excellent performance by the whole team. Much needed win 😄',
                    time: '2:55pm',
                    imageUrl: 'assets/chat-icons/User.png',
                  ),
                  const GroupChatContainer(
                    name: 'LexyJay',
                    message:
                        'That was an excellent performance by the whole team. Much needed win 😄',
                    time: '2:55pm',
                    imageUrl: 'assets/chat-icons/User.png',
                  ),
                  const SingleChatContainer(
                    text:
                        'Hi Zara, Wonderful to meet you. How about we watch our Next home  game together at Anfield? 😄',
                    imageUrl: 'assets/chat-icons/User.png',
                    time: '2:55pm',
                    voice: 'assets/voice feature-poll feature/voiceNote.png',
                    bottomRightRadius: 0,
                    isPrefixImage: false,
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.05,
                        vertical: Get.height * 0.01),
                    decoration: const BoxDecoration(
                        color: Color(0xFF2B2B3D),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              child: Image.asset(
                                'assets/chat-icons/User.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.01,
                            ),
                            const Text(
                              'TheCoolLFCguy',
                              style: kHeading7,
                            ),
                            const Spacer(),
                            const Text(
                              '2:55pm',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFC7C9D9)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: Get.width * 0.02,
                              height: Get.height * 0.122,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                  color: Color(0xFF06C270)),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                margin: EdgeInsets.symmetric(
                                    vertical: Get.height * 0.01),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF2E3F61),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 18,
                                          child: Image.asset(
                                            'assets/chat-icons/User.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: Get.width * 0.01,
                                        ),
                                        const Text(
                                          'TheCoolLFCguy',
                                          style: kHeading7,
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '2:55pm',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFC7C9D9)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.01,
                                    ),
                                    const Text(
                                      'Like! What a stunning goal. We have to win the league 😄',
                                      style: kHeading7,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'So excited to see Salah bag a brace tonight. We are coming for the league 😄',
                          style: kHeading7,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
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
