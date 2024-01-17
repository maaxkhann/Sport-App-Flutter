import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';

import '../group_chat_screen.dart';
import '../single_chat_screen.dart';

class MainAndGroupChat extends StatelessWidget {
  final String image;

  final String name;
  final String message;
  final String time;

  const MainAndGroupChat({
    super.key,
    required this.image,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.02,
                left: Get.width * 0.02,
                right: Get.width * 0.02),
            child: InkWell(
              onTap: () {
                if (index == 4) {
                  Get.to(() => const GroupChatScreen());
                } else {
                  Get.to(() => const SingleChatScreen());
                }
              },
              child: Card(
                color: index == 2 || index == 3 ? kBG : const Color(0xFF2B2B3D),
                child: ListTile(
                    leading: CircleAvatar(
                      radius: 23,
                      child: Image.asset(index == 4
                          ? 'assets/chat-icons/image 184.png'
                          : image),
                    ),
                    title: Text(
                      index == 4 ? 'Never Walk Alone' : name,
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
                          : message,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE3EDFF)),
                    ),
                    trailing: index == 2 || index == 3
                        ? Text(
                            time,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFC7C9D9)),
                          )
                        : Column(
                            children: [
                              Container(
                                width: Get.width * 0.02,
                                height: Get.height * 0.02,
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle),
                              ),
                              Text(
                                time,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFC7C9D9)),
                              ),
                            ],
                          )),
              ),
            ),
          );
        });
  }
}
