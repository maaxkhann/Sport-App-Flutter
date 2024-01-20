import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        SizedBox(
            width: double.infinity,
            height: Get.height * 1,
            child: Image.asset(
              'assets/home-icons/image 163.png',
              fit: BoxFit.cover,
            )),
        Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                splashColor: Colors.white60,
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                      right: Get.width * 0.036, top: Get.height * 0.016),
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: InkWell(
                          onTap: () => Get.back(),
                          child: const Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 16,
                          ))),
                ),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: Get.size.aspectRatio * 3,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.03),
                    child: Divider(
                      thickness: Get.height * 0.002,
                      color: const Color(0xFFC7C9D9),
                    ),
                  );
                }),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.035),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                          'assets/common-icons/avatar.png',
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The cool LFC guy",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: kWhite,
                              )),
                          Text("30m ago", style: kHeading6)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/home-icons/play.svg',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      SvgPicture.asset('assets/home-icons/volumeslash.svg',
                          width: 24, height: 24),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: Get.width * 0.04,
                right: Get.width * 0.04,
                bottom: Get.height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.emoji_emotions_outlined,
                          size: 24,
                          color: kWhite,
                        ),
                        hintText: 'Type something',
                        hintStyle: const TextStyle(color: kWhite),
                        border: InputBorder.none,
                        fillColor: Colors.white38,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(16)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                    style: const TextStyle(color: kWhite),
                  ),
                ),
                const SizedBox(width: 8),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white38),
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
          ),
        ),
      ]),
    ));
  }
}
