import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class GroupChatContainer extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;
  const GroupChatContainer(
      {super.key,
      required this.name,
      required this.message,
      required this.time,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.01),
      decoration: const BoxDecoration(
          color: Color(0xFF2B2B3D),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: Get.width * 0.01,
              ),
              Text(
                name,
                style: kHeading7,
              ),
              const Spacer(),
              Text(
                time,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC7C9D9)),
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            message,
            style: kHeading7,
          )
        ],
      ),
    );
  }
}
