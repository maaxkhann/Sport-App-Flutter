import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/chat/widgets/main_and_group_chat.dart';
import 'package:sports_app/screens/chat/widgets/main_chat_appBar.dart';

import 'widgets/calls_tabbar_view_widget.dart';

class MainChatScreen extends StatelessWidget {
  const MainChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kBG,
        appBar: const MainChatAppBar(),
        body: TabBarView(
          children: [
            const MainAndGroupChat(
              image: 'assets/common-icons/person.png',
              name: 'John Cooks @Johncooks16',
              message: 'Hey Buddy, Available for tonight’s game?',
              time: '2hrs',
            ),
            Scaffold(
              body: const MainAndGroupChat(
                image: 'assets/chat-icons/image 186.png',
                name: 'NBA for All',
                message: '@BigFlexLFC: Big game Tonight....',
                time: '2hrs',
              ),
              floatingActionButton: Container(
                width: Get.width * 0.12,
                height: Get.height * 0.06,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Color(0Xff3377ff26),
                    spreadRadius: 8,
                    blurRadius: 10,
                  ),
                ]),
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Get.height * 0.1)),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: kWhite,
                  ),
                ),
              ),
            ),
            const CallsTabBarView()
          ],
        ),
      ),
    );
  }
}
