import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class CallsTabBarView extends StatefulWidget {
  const CallsTabBarView({
    super.key,
  });

  @override
  State<CallsTabBarView> createState() => _CallsTabBarViewState();
}

class _CallsTabBarViewState extends State<CallsTabBarView> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: Get.height * 0.04),
                width: Get.width * 0.6,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: const Color(0xFF2B2B3D),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Container(
                        width: Get.width * 0.25,
                        margin: EdgeInsets.only(
                            right: Get.width * 0.1,
                            top: Get.height * 0.005,
                            bottom: Get.height * 0.005,
                            left: Get.width * 0.01),
                        decoration: BoxDecoration(
                            color: const Color(0xFFC7C9D9),
                            borderRadius: BorderRadius.circular(6)),
                        child: const Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Missed',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7588)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.04),
                child: const Icon(
                  Icons.add_ic_call,
                  color: kWhite,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: isSelected ? Get.height * 0.06 : Get.height * 0.14,
        ),
        isSelected == true
            ? ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    indent: Get.width * 0.04,
                    endIndent: Get.width * 0.04,
                    color: const Color(0xFF6B7588),
                    thickness: 1,
                    height: 0,
                  );
                },
                itemBuilder: (context, index) {
                  String subtitleText = '';
                  IconData iconData;
                  Color subtitleColor;

                  switch (index) {
                    case 0:
                      subtitleText = 'Missed';
                      iconData = Icons.missed_video_call;
                      subtitleColor = const Color(0xFFE53535);
                      break;
                    case 1:
                      subtitleText = 'Incoming';
                      iconData = Icons.phone_callback;
                      subtitleColor = const Color(0xFF57EBA1);
                      break;
                    case 2:
                      subtitleText = 'Outgoing';
                      iconData = Icons.phone_forwarded;
                      subtitleColor = const Color(0xFF1566C9);
                      break;
                    default:
                      subtitleText = '';
                      iconData =
                          Icons.help; // Default icon if index is not expected
                      subtitleColor = Colors.black; // Default color
                  }

                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      child: Image.asset('assets/common-icons/person.png'),
                    ),
                    title: const Text(
                      'Lexyjay',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kWhite,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          iconData,
                          size: 15,
                          color: subtitleColor,
                        ),
                        Text(
                          subtitleText,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: subtitleColor,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.more_horiz,
                            color: kWhite,
                            size: 15,
                          ),
                          Text(
                            '8:39',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFC7C9D9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                    child: const Text(
                      'All your call history will appear here.',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: kWhite),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                      child: const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'To make a call, select the ',
                              style: TextStyle(fontSize: 16, color: kWhite),
                            ),
                            WidgetSpan(
                              child: Icon(
                                Icons.add_ic_call,
                                color: kWhite,
                                size: 17,
                              ),
                            ),
                            TextSpan(
                              text: ' icon and select your contact.',
                              style: TextStyle(fontSize: 16, color: kWhite),
                            ),
                          ],
                        ),
                      ))
                ],
              )
      ],
    );
  }
}
