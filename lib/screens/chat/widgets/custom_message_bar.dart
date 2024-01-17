import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';

class CustomMessageBar extends StatelessWidget {
  const CustomMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xFF2B2B3D),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  const Icon(Icons.emoji_emotions,
                      color: Colors.green, size: 24),
                  const SizedBox(width: 4),
                  const Icon(Icons.photo_album, color: Colors.blue, size: 24),
                  const SizedBox(width: 4),
                  const Icon(Icons.link, color: Colors.white, size: 24),
                  const SizedBox(width: 4),
                  Container(
                    width: 1,
                    height: Get.height * 0.032,
                    color: kWhite,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: TextField(
                      controller: textController,
                      style: const TextStyle(fontSize: 16, color: kWhite),
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.mic,
                            size: 20,
                            color: kWhite,
                          ),
                        ),
                        hintText: 'Type message',
                        hintStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFC7C9D9),
                            fontStyle: FontStyle.italic),
                        border: InputBorder.none,
                      ),
                      onChanged: (text) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF2B2B3D)),
              child: SvgPicture.asset(
                'assets/chat-icons/Send.svg',
                width: 16,
                height: 16,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
