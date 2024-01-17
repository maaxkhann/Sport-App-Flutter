import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sports_app/screens/chat/main_chat_screen.dart';

import '../screens/explore-articledetail/explore_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/live/live_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int isSelectedTab = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const LiveScreen(),
    const MainChatScreen(),
    // ExploreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isSelectedTab != 0) {
          setState(() {
            isSelectedTab = 0;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF0B202B),
        body: pages[isSelectedTab],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF242433),
            onTap: (index) {
              setState(() {
                isSelectedTab = index;
              });
            },
            currentIndex: isSelectedTab,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home-icons/home.svg', // Change to your SVG path or URL
                  width: 20,
                  height: 20,
                  color: isSelectedTab == 0
                      ? const Color(0xFF1566C9)
                      : const Color(0xFF8F90A6),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home-icons/discovery.svg', // Change to your SVG path or URL
                  width: 20,
                  height: 20,
                  color: isSelectedTab == 1
                      ? const Color(0xFF1566C9)
                      : const Color(0xFF8F90A6),
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home-icons/playcircle.svg', // Change to your SVG path or URL
                  width: 24,
                  height: 24,
                  color: isSelectedTab == 2
                      ? const Color(0xFF1566C9)
                      : const Color(0xFF8F90A6),
                ),
                label: 'Live',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: SvgPicture.asset(
                    'assets/home-icons/message.svg', // Change to your SVG path or URL
                    width: 20,
                    height: 18,
                    color: isSelectedTab == 3
                        ? const Color(0xFF1566C9)
                        : const Color(0xFF8F90A6),
                  ),
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home-icons/shoppingcart.svg', // Change to your SVG path or URL
                  width: 24,
                  height: 24,
                  color: isSelectedTab == 4
                      ? const Color(0xFF1566C9)
                      : const Color(0xFF8F90A6),
                ),
                label: 'Shop',
              ),
            ],
            selectedItemColor: const Color(0xFF1566C9),
            unselectedItemColor: const Color(0xFF8F90A6),
            //  unselectedLabelStyle: const TextStyle(color: Color(0xFF8F90A6)),
            //  selectedLabelStyle: const TextStyle(color: Color(0xFF1566C9)),
          ),
        ),
      ),
    );
  }
}
