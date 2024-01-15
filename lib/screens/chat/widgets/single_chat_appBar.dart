import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';

class SingleChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SingleChatAppBar({
    super.key,
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
        padding:
            EdgeInsets.only(right: Get.width * 0.02, top: Get.height * 0.025),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.asset('assets/common-icons/person.png'),
            ),
            Padding(
              padding: EdgeInsets.only(right: Get.width * 0.08),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Cooks',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kWhite),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFE3EDFF)),
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width * 0.09,
              height: Get.height * 0.05,
              decoration: const BoxDecoration(
                  color: Color(
                    0xFF181829,
                  ),
                  shape: BoxShape.circle),
              child: const Center(
                child: Icon(
                  Icons.phone,
                  size: 22,
                  color: kWhite,
                ),
              ),
            ),
            Container(
              width: Get.width * 0.09,
              height: Get.height * 0.05,
              decoration: const BoxDecoration(
                  color: Color(
                    0xFF181829,
                  ),
                  shape: BoxShape.circle),
              child: const Center(
                child: Icon(
                  Icons.video_call,
                  size: 22,
                  color: kWhite,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(Get.height * 0.1);
}
