import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/live/widgets/reusable_row_live_screen2.dart';

class LiveScreen2 extends StatefulWidget {
  const LiveScreen2({Key? key}) : super(key: key);

  @override
  State<LiveScreen2> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: Get.height * 1,
              child:
                  Image.asset('assets/live-icons/Cr7.jpg', fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .04, vertical: Get.height * .03),
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {},
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(40),
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
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                              'assets/live-icons/author.png',
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("The cool LFC guy",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: kWhite,
                                  )),
                              Text("@gabriel Kimmich", style: kHeading6)
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: Get.width * 0.22,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE53535),
                          borderRadius: BorderRadius.circular(49.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/live-icons/eye.svg'),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("446k", style: kHeading7)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white54,
                            ),
                            child: const Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.014,
                          ),
                          SvgPicture.asset(
                            'assets/common-icons/heart.svg',
                            height: 24,
                            width: 24,
                          ),
                          const Text("32k",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              )),
                          SizedBox(
                            height: Get.height * 0.014,
                          ),
                          SvgPicture.asset(
                            'assets/live-icons/message.svg',
                            height: 24,
                            width: 24,
                          ),
                          const Text("2050",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * .07),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Live @NBA",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: kWhite,
                                )),
                            const Text(
                                "Hey there guys, watch NBA games live with me.",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: kWhite)),
                            SizedBox(
                              height: Get.height * .03,
                            ),
                            const ReUsableRowLiveScreen2(
                              userImage: 'assets/live-icons/author.png',
                              userName: 'Rachel miles',
                              userComment: 'Wow! Thank you Gab.',
                            ),
                            SizedBox(
                              height: Get.height * .03,
                            ),
                            const ReUsableRowLiveScreen2(
                              userImage: 'assets/live-icons/author2.png',
                              userName: 'Jordan Riley',
                              userComment: 'Wow! Go Lakers. Let’s get the win.',
                            ),
                            SizedBox(
                              height: Get.height * .03,
                            ),
                            const ReUsableRowLiveScreen2(
                              userImage: 'assets/live-icons/author.png',
                              userName: 'Rachel miles',
                              userComment: 'Wow! Thank you Gab.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    left: Get.width * 0.04,
                    right: Get.width * 0.04,
                    bottom: Get.height * 0.02),
                child: Container(
                  width: Get.width,
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2B2B3D),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/common-icons/emoji.svg',
                        width: 24.0,
                        height: 24.0,
                        color: Colors.white, // Customize the color as needed
                      ),
                      const SizedBox(width: 8.0),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type something',
                            hintStyle: TextStyle(color: kWhite),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(color: kWhite),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
