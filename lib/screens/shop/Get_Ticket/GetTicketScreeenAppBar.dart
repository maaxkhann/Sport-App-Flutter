import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/constant_widgets/bottom_nav_bar_widget.dart';

class GetTicketScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const GetTicketScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBG,
      leading: InkWell(
        onTap: () => Get.offAll(() => const BottomNavigationBarWidget()),
        child: SvgPicture.asset(
          'assets/common-icons/arrow-back.svg',
          width: 9,
          height: 16,
          fit: BoxFit.scaleDown,
          color: Colors.white,
        ),
      ),
      title: const Text(
        'Book Ticket',
        style: kHeading3,
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(right: Get.width * 0.05),
            child: SvgPicture.asset(
              'assets/common-icons/notification.svg',
              width: 17,
              height: 25,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(Get.height * 0.13);
}
