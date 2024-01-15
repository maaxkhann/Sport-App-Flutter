import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/screens/chat/group_chat_screen.dart';
import 'package:sports_app/screens/chat/single_chat_screen.dart';
import 'package:sports_app/screens/chat/widgets/main_chat_appBar.dart';

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
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: Get.height * 0.02),
                    child: InkWell(
                      onTap: () {
                        if (index == 4) {
                          Get.to(() => const GroupChatScreen());
                        } else {
                          Get.to(() => const SingleChatScreen());
                        }
                      },
                      child: Card(
                        color: const Color(0xFF2B2B3D),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 23,
                            child:
                                Image.asset('assets/common-icons/person.png'),
                          ),
                          title: Text(
                            index == 4
                                ? 'Never Walk Alone'
                                : 'John Cooks @Johncooks16',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: kWhite),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            index == 4
                                ? '@BigFlexLFC: Big game Tonight....'
                                : 'Hey Buddy, Available for tonight’s game?',
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFE3EDFF)),
                          ),
                          trailing: const Text(
                            '2hrs',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFC7C9D9)),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            Center(child: Text("Page 2")),
            Center(child: Text("Page 2")),
          ],
        ),
      ),
    );
  }
}
