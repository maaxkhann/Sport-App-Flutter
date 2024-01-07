import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

import '../../add_favourites/add_favourites_screen.dart';
import '../../local_pickup_games/local_pickup_games_screen.dart';

class HomeMenuDrawer extends StatelessWidget {
  const HomeMenuDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF181829),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: const Color(0xFF323A3D),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: InkWell(
                          onTap: () => Get.back(),
                          child: const Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 20,
                          ))),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/common-icons/person.png',
                      width: 48,
                      height: 48,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'The Cool LFC Guy',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SvgPicture.asset(
                              'assets/common-icons/verify.svg',
                              width: 16,
                              height: 16,
                            ),
                          ],
                        ),
                        const Text(
                          '@Daniel Kimmich',
                          style: kHeading7,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '201K',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      '8,905',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      '452',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.005,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Followers',
                      style: kHeading7,
                    ),
                    Text(
                      'Following',
                      style: kHeading7,
                    ),
                    Text(
                      'Mutuals',
                      style: kHeading7,
                    )
                  ],
                ),
              ],
            ),
          )),
          ListTile(
            leading: SvgPicture.asset(
              'assets/common-icons/profile.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/common-icons/heart.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            title: const Text(
              'Favourites',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            onTap: () => Get.to(() => const AddFavouritesScreen()),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/home-icons/shoppingcart.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            title: const Text(
              'Purchases',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/home-icons/game.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            title: const Text(
              'Fantasy',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/home-icons/Geometry.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            title: const Text(
              'Pick Up games',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            onTap: () => Get.to(() => const LocalPickUpGamesScreen()),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/home-icons/Setting.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/common-icons/logout.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
