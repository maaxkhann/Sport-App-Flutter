import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ReUsableRowLiveScreen2 extends StatelessWidget {
  const ReUsableRowLiveScreen2({
    super.key,
    required this.userImage,
    required this.userName,
    required this.userComment,
  });
  final String userImage;
  final String userName;
  final String userComment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage(
            userImage,
          ),
        ),
        SizedBox(
          width: Get.width * .02,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(userName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    )),
                SvgPicture.asset(
                  'assets/common-icons/verify.svg',
                  height: 20,
                  width: 20,
                )
              ],
            ),
            Row(
              children: [
                Text(userComment,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    )),
                SvgPicture.asset(
                  'assets/iconsax/bulk/heart.svg',
                  color: const Color(0xFFFF3B3B),
                  height: 20,
                  width: 20,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
