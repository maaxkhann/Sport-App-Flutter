import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';

import '../../constant_widgets/bottom_nav_bar_widget.dart';

class ArticleDetailScreen extends StatefulWidget {
  const ArticleDetailScreen({Key? key}) : super(key: key);

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: Get.height * .36,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(36),
                        bottomLeft: Radius.circular(36),
                      )),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(36),
                          bottomLeft: Radius.circular(36),
                        ),
                        child: Image.asset(
                          'assets/explore-articledetail-icons/articlel5.png',
                          height: Get.height,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * .04,
                            vertical: Get.height * .03),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Get.to(
                                  () => const BottomNavigationBarWidget()),
                              child: SvgPicture.asset(
                                'assets/common-icons/arrow-back.svg',
                                height: 17,
                                width: 9,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      width: Get.width * .15,
                                      height: Get.height * .07,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white38,
                                      ),
                                      child: const Icon(
                                        Icons.share,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      width: Get.width * .15,
                                      height: Get.height * .07,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF3377FF),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/explore-articledetail-icons/Bookmark.svg',
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.scaleDown,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * .03, vertical: Get.height * .03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Arsenal vs Aston Villa prediction",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/common-icons/person.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Brian Imanuel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                )),
                            SizedBox(
                              height: 3,
                            ),
                            Text("May 15, 2020 ",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFC4C4C4),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'assets/common-icons/heart.svg',
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text("1403",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'assets/explore-articledetail-icons/Chat.svg',
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("976",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kWhite,
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * .02, vertical: Get.height * .0),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A",
                          style: TextStyle(
                            fontSize: 52,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        width: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              "rsenal will have to grind it out against\nAston Villa if they are to register",
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                child: Stack(
                  children: [
                    // Text content
                    const Text(
                      "League wins. The match is scheduled for Sunday at the Emirates.\n\n"
                      "The Gunners put forth a real statement of intent after their 1-0 win against Manchester United.\n"
                      "Mikel Arteta's side had already surrendered points to Liverpool, Manchester City and ",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),

                    Positioned(
                      bottom: 10,
                      child: Container(
                        height: Get.height * 0.09,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 0.485, 1.0],
                            colors: [
                              Color(0xFF181829),
                              Color(0xFF181829),
                              Color(0xFF1818297d),
                            ],
                          ),
                        ),
                        // "Read More" button
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: Get.height * 0.015,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 56,
                                width: 250,
                                child: Center(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        // Add your "Read More" button logic here
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF3088F4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(36),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Read More",
                                              style: TextStyle(
                                                fontSize: 18,
                                                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
