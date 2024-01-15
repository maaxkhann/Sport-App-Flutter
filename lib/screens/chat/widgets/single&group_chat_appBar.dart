import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';

class SingleAndGroupChatAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String subTitle;
  final String imageUrl;
  final bool? isTrue;

  const SingleAndGroupChatAppBar({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    this.isTrue = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(17, 90, 180, 0.26),
      leading: Padding(
        padding: EdgeInsets.only(top: Get.height * 0.025),
        child: InkWell(
          onTap: () => Get.back(),
          child: SvgPicture.asset(
            'assets/common-icons/arrow-back.svg',
            width: 9,
            height: 16,
            fit: BoxFit.scaleDown,
            color: Colors.white,
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: Get.height * 0.025),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.asset(imageUrl),
            ),
            SizedBox(width: Get.width * 0.015),
            Flexible(
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kWhite),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFE3EDFF)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(top: Get.height * 0.02),
          width: Get.width * 0.08,
          height: Get.height * 0.05,
          decoration: const BoxDecoration(
              color: Color(
                0xFF181829,
              ),
              shape: BoxShape.circle),
          child: const Center(
            child: Icon(
              Icons.phone,
              size: 18,
              color: kWhite,
            ),
          ),
        ),
        const SizedBox(width: 6), // Add space between icons
        Container(
          margin: EdgeInsets.only(
            top: Get.height * 0.02,
            right: Get.width * 0.01,
          ),
          width: Get.width * 0.08,
          height: Get.height * 0.05,
          decoration: const BoxDecoration(
              color: Color(
                0xFF181829,
              ),
              shape: BoxShape.circle),
          child: const Center(
            child: Icon(
              Icons.video_call,
              size: 18,
              color: kWhite,
            ),
          ),
        ),
        const SizedBox(width: 6), // Add space between icons
        if (isTrue == true)
          Container(
            margin: EdgeInsets.only(
                top: Get.height * 0.02, right: Get.width * 0.01),
            width: Get.width * 0.08,
            height: Get.height * 0.05,
            decoration: const BoxDecoration(
                color: Color(
                  0xFF181829,
                ),
                shape: BoxShape.circle),
            child: const Center(
              child: Icon(
                Icons.more_horiz,
                size: 18,
                color: kWhite,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Get.height * 0.1);
}
