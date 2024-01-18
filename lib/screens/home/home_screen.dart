import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/home/widgets/home_menu_drawer.dart';
import 'package:sports_app/screens/home/widgets/polls_widget.dart';
import 'package:sports_app/screens/home/widgets/post_widget.dart';
import 'package:sports_app/screens/home/widgets/story_widget.dart';
import 'package:sports_app/screens/home/widgets/trending_widget.dart';
import 'package:sports_app/screens/home/widgets/whats_happening_widget.dart';
import '../explore-articledetail/explore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG,
      drawer: const HomeMenuDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Padding(
                        padding: EdgeInsets.only(right: Get.width * 0.02),
                        child: SvgPicture.asset(
                          'assets/home-icons/menu.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: Get.width * 0.1),
                    child: SvgPicture.asset(
                      'assets/home-icons/svg-logo-file.svg',
                      width: 99,
                      height: 40,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: Get.width * 0.06),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => const ExploreScreen());
                          },
                          child: SvgPicture.asset(
                            'assets/common-icons/search.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/common-icons/notification.svg',
                          width: 25,
                          height: 27,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Expanded(
                child: ListView(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: Get.height * 0.065,
                                  width: Get.width * 0.134,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Icon(
                                        Icons.add,
                                        color: kWhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              const Text(
                                'Add Stories',
                                style: kHeading6,
                              )
                            ],
                          ),
                          const StoryWidget(
                              image: 'assets/home-icons/image1.png',
                              text: 'Divas'),
                          const StoryWidget(
                              image: 'assets/home-icons/manchester.png',
                              text: 'ManUtd'),
                          const StoryWidget(
                              image: 'assets/home-icons/author-avatar.png',
                              text: 'KingKay'),
                          const StoryWidget(
                              image: 'assets/home-icons/Bayern.png',
                              text: 'FcBayern'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.025,
                    ),
                    const WhatsHappeningWidget(),
                    SizedBox(
                      height: Get.height * 0.025,
                    ),
                    const TrendingWidget(),
                    SizedBox(
                      height: Get.height * 0.025,
                    ),
                    const Divider(
                      color: Color(0xFF2B2B3D),
                    ),
                    SizedBox(
                      height: Get.height * 0.013,
                    ),
                    PostWidget(
                        name: 'Rukky Royals',
                        userName: '@Rukky_Royals',
                        hashTag: '#NWUMUFC',
                        postText:
                            'Newcastle just destroyed United!! \u{1F639} Wilson and Willock with goals! \u{1F639}',
                        postWidget: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/home-icons/image.png',
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      height: Get.height * 0.013,
                    ),
                    const PostWidget(
                      name: 'Mike Dean',
                      userName: '@Mikedean_',
                      hashTag: '\u{1F639} #NWUMUFC',
                      postText:
                          'I think TenHagg needs to start thinking of what to do with Weghorst future. Definitely not United.\n',
                    ),
                    SizedBox(
                      height: Get.height * 0.013,
                    ),
                    PostWidget(
                        name: 'NBANews',
                        userName: '@NBASports',
                        postWidget: PollsWidget(),
                        hashTag: '#NBA',
                        postText:
                            'Where should NBA host Outdoor games? \u{1F639} We might get Basketball  version of “Field of Dream”  Which of these Iconic courts should The NBA host an official game? '),
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
