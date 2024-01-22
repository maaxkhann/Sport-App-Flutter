import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

import 'package:sports_app/screens/live/widgets/livestream_stack_widget.dart';

class LiveStreamScreen extends StatelessWidget {
  const LiveStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const LiveStreamStackWidget(),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 17,
                      backgroundImage:
                          AssetImage('assets/home-icons/author-avatar.png'),
                    ),
                    title: Row(
                      children: [
                        const Text(
                          'Mike Dean',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kWhite),
                        ),
                        SizedBox(
                          width: Get.width * 0.01,
                        ),
                        SvgPicture.asset('assets/common-icons/verify.svg'),
                      ],
                    ),
                    subtitle: const Text(
                      'Goaaalllll..... what a finish from Iwobi',
                      style: kHeading6,
                    ),
                  );
                })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red.withOpacity(0.3),
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {},
          child: const Icon(
            Icons.favorite_outline,
            color: Colors.red,
          ),
        ),
        //   bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
