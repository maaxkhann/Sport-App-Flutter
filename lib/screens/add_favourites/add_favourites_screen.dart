import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/add_favourites/widgets/add_favourites_category1_widget.dart';
import 'package:sports_app/screens/add_favourites/widgets/add_favourites_category2_widget.dart';
import '../../constant_widgets/constant_textfield_search.dart';

class AddFavouritesScreen extends StatelessWidget {
  const AddFavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF181829),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.055, vertical: Get.height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: SvgPicture.asset(
                          'assets/common-icons/arrow-back.svg',
                          width: 9,
                          height: 16,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: Get.width * 0.25),
                        child: const Text(
                          'Favourites',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/common-icons/notification.svg',
                          width: 17,
                          height: 22,
                        ),
                      )
                    ]),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                const ConstantTextFieldSearch(
                    hintText: 'Search your competition...',
                    prefixImage: 'assets/common-icons/search.svg'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddFavouriteCategory1Widget(
                      imagePath: 'assets/category/soccer.png',
                      containerColor: Color(0xFF222232),
                    ),
                    AddFavouriteCategory1Widget(
                      imagePath: 'assets/category/basketball.png',
                      containerColor: Color(0xFF222232),
                    ),
                    AddFavouriteCategory1Widget(
                      imagePath: 'assets/category/laliga.png', //champions
                      containerColor: Color(0xFF222232),
                    ),
                    AddFavouriteCategory1Widget(
                      imagePath: 'assets/category/barcelona.png',
                      containerColor: Color(0xFF222232),
                    ),
                    AddFavouriteCategory1Widget(
                      imagePath: 'assets/category/liverpool.png',
                      containerColor: Color(0xFF222232),
                    ),
                    AddFavouriteCategory1Widget(
                      imagePath: 'assets/category/laliga.png',
                      containerColor: Color(0xFF222232),
                    ),
                    AddFavouriteCategory1Widget(
                      imagePath: 'assets/common-icons/addIcon.png',
                      containerColor: Color(0xFF222232),
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Suggested for you',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Column(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.more_horiz,
                              size: 15,
                              color: Colors.white,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'assets/common-icons/logout.svg',
                                width: 24,
                                height: 24,
                                color: Colors.black,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sports',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/soccer.png',
                        containerColor: Color(0xFF222232),
                        text: 'Soccer'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/basketball.png',
                        containerColor: Color(0xFF222232),
                        text: 'Basketball'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/football.png',
                        containerColor: Color(0xFF222232),
                        text: 'Football'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/baseball.png',
                        containerColor: Color(0xFF222232),
                        text: 'Baseball'),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/tennis.png',
                        containerColor: Color(0xFF222232),
                        text: 'Tennis'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/volleyball.png',
                        containerColor: Color(0xFF222232),
                        text: 'Volleyball'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/cricketball.png',
                        containerColor: Color(0xFF222232),
                        text: 'Cricket'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/badminton.png',
                        containerColor: Color(0xFF222232),
                        text: 'Badminton'),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'League',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/laliga.png',
                        containerColor: Color(0xFF222232),
                        text: 'LaLiga'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/volleyball.png',
                        containerColor: Color(0xFF222232),
                        text: 'PremierLeague'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/nfl.png',
                        containerColor: Color(0xFF222232),
                        text: 'NFL'),
                    AddFavouriteCategory2Widget(
                        imagePath: 'assets/category/nba.png',
                        containerColor: Color(0xFF222232),
                        text: 'NBA'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
