import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/explore-articledetail/widgets/constant_explore_widget.dart';
import '../../constant_widgets/constant_textfield_search.dart';
import 'article_detail_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int selectedGameIndex = -1;
  List<String> gameImages = [
    'assets/category/soccer.png',
    'assets/category/basketball.png',
    'assets/category/football.png',
    'assets/category/baseball.png',
    'assets/category/tennis.png',
    'assets/category/volleyball.png',
    'assets/category/cricketball.png',
    'assets/category/badminton.png',
  ];
  List<String> gameNames = [
    'Soccer',
    'Basketball',
    'Football',
    'Baseball',
    'Tennis',
    'Volleyball',
    'Cricketball',
    'Badminton',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.046, vertical: Get.height * 0.02),
          child: ListView(
            children: [
              SizedBox(
                height: Get.height * .01,
              ),
              const ConstantTextFieldSearch(
                hintText: 'Search for news, team, match, etc...',
                prefixImage: 'assets/common-icons/search.svg',
              ),
              SizedBox(
                height: Get.height * .018,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int index = 0; index < gameImages.length; index++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGameIndex = index;
                          });
                        },
                        child: Container(
                          width: selectedGameIndex == index
                              ? Get.width * 0.32
                              : Get.width * 0.16,
                          height: Get.height * 0.06,
                          decoration: BoxDecoration(
                            shape: selectedGameIndex == index
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            borderRadius: selectedGameIndex == index
                                ? BorderRadius.circular(30)
                                : null,
                            color: selectedGameIndex == index
                                ? const Color(0xFF1566C9)
                                : const Color(0xFF222232),
                          ),
                          child: Row(
                            mainAxisAlignment: selectedGameIndex == index
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: selectedGameIndex == index ? 8 : 0),
                                child: Image.asset(
                                  gameImages[index],
                                  filterQuality: FilterQuality.high,
                                  width: selectedGameIndex == index
                                      ? Get.width * 0.08
                                      : Get.width * 0.08,
                                ),
                              ),
                              if (selectedGameIndex == index)
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    gameNames[index],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * .022,
              ),
              const ConstantExploreWidget(
                imagePath: 'assets/explore-articledetail-icons/article1.png',
                titleText: 'Roumor Has It: Lampard’s\nposition under threat...',
                subTitleText: '04 JAN 2021, 14:16',
                trailingIcon: 'assets/explore-articledetail-icons/Bookmark.svg',
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const ConstantExploreWidget(
                imagePath: 'assets/explore-articledetail-icons/article2.png',
                titleText:
                    'Artrta sees ‘natural leader’\nTierney as a future...',
                subTitleText: '04 JAN 2021, 14:16',
                trailingIcon: 'assets/explore-articledetail-icons/Bookmark.svg',
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const ConstantExploreWidget(
                imagePath: 'assets/explore-articledetail-icons/article3.png',
                titleText:
                    'Athletic Bilbao to appoint\nMarcelino as coach until...',
                subTitleText: '04 JAN 2021, 14:16',
                trailingIcon: 'assets/explore-articledetail-icons/Bookmark.svg',
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const ConstantExploreWidget(
                imagePath: 'assets/explore-articledetail-icons/article4.png',
                titleText:
                    'Barcelona suffer too much\nlate in games, says Ter Stegen',
                subTitleText: '04 JAN 2021, 14:16',
                trailingIcon: 'assets/explore-articledetail-icons/Bookmark.svg',
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              const Text("Trending News",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  )),
              SizedBox(
                height: Get.height * .02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * .25,
                      width: Get.width * .6,
                      child: InkWell(
                        radius: 40,
                        onTap: () => Get.to(() => const ArticleDetailScreen()),
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    'assets/explore-articledetail-icons/articlel5.png')),
                            const Positioned(
                              left: 10,
                              bottom: 70,
                              child: Text(
                                'Arsenal vs\nAston Villa prediction',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            ),
                            const Positioned(
                              left: 10,
                              bottom: 50,
                              child: Text(
                                'May 15, 2020',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    SizedBox(
                      height: Get.height * .25,
                      width: Get.width * .6,
                      child: InkWell(
                        radius: 40,
                        onTap: () {},
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/explore-articledetail-icons/article6.png',
                                  height: Get.height * .21,
                                  width: Get.width,
                                  fit: BoxFit.fill,
                                )),
                            const Positioned(
                              left: 10,
                              bottom: 70,
                              child: Text(
                                'Expected Borussia\nDortmund starting ...',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            ),
                            const Positioned(
                              left: 10,
                              bottom: 50,
                              child: Text(
                                'Aug 23, 2020',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
