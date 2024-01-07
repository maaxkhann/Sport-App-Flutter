import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/voice%20feature%20&%20poll%20feature/widgets/poll_textfield_widget.dart';
import 'package:sports_app/screens/voice%20feature%20&%20poll%20feature/widgets/poll_timepicker_row_widget.dart';

import '../../constant_widgets/constant_round_button.dart';

class PollFeatureScreen extends StatefulWidget {
  const PollFeatureScreen({super.key});

  @override
  State<PollFeatureScreen> createState() => _PollFeatureScreenState();
}

class _PollFeatureScreenState extends State<PollFeatureScreen> {
  List<TextEditingController> textControllers = [];
  int maxLength = 25;
  // int remainingChars = 25;

  @override
  void initState() {
    super.initState();
    textControllers.add(TextEditingController());
  }

  void addTextField() {
    setState(() {
      textControllers.add(TextEditingController());
    });
  }

  void removeTextField(int index) {
    setState(() {
      textControllers.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  RoundButton(
                    onPressed: () {
                      // print('tapped');
                    },
                    buttonColor: const Color(0xFFCED0D2),
                    titleColor: const Color(0xFF6B7588),
                    title: 'Cancel',
                  ),
                  const Spacer(),
                  RoundButton(
                    onPressed: () {
                      // print('tapped');
                    },
                    buttonColor: const Color(0xFF1566C9),
                    titleColor: const Color(0xFFFFFFFF),
                    title: 'Done',
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.050,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: Get.height * 0.020,
                          backgroundImage: const AssetImage(
                              'assets/voice feature-poll feature/avatar.png'),
                        ),
                        // 10px paddaing
                        SizedBox(
                          width: Get.width * 0.030,
                        ),
                        const Expanded(
                          child: TextField(
                            textInputAction: TextInputAction.done,
                            maxLines: null,
                            decoration: InputDecoration(
                              hintText: 'Ask questions',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.010,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: Get.width * 0.12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5),
                          border: Border.all(color: const Color(0xFF8F90A6))),
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                left: Get.width * 0.03,
                                right: Get.width * 0.03,
                                top: Get.width * 0.03,
                              ),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: textControllers.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: Get.height * 0.020),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: CustomTextField(
                                              textControllers: textControllers,
                                              maxLength: maxLength,
                                              index: index,
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.025,
                                          ),
                                          textControllers[index].text.isEmpty
                                              ? InkWell(
                                                  onTap: () {
                                                    addTextField();
                                                  },
                                                  child: SizedBox(
                                                    height: 25,
                                                    width: 25,
                                                    child: Image.asset(
                                                        'assets/common-icons/addIcon.png'),
                                                  ),
                                                )
                                              : InkWell(
                                                  onTap: () {
                                                    removeTextField(index);
                                                  },
                                                  child: SizedBox(
                                                    height: 25,
                                                    width: 25,
                                                    child: Image.asset(
                                                        'assets/common-icons/closeIcon.png'),
                                                  ),
                                                ),
                                        ],
                                      ),
                                    );
                                  })),
                          const Divider(
                            color: Color(0xFF6B7588),
                            thickness: 1.0,
                          ),
                          ExpansionTile(
                            title: const Row(
                              children: [
                                Text(
                                  'Poll length',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '24hrs',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                            iconColor: const Color(0xFFFFFFFF),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(children: [
                                  const TimePickerRow(
                                      text1: '1', text2: '3', text3: '20'),
                                  Container(
                                    color: const Color(0xFF2B2B3D),
                                    child: const TimePickerRow(
                                        text1: '2days',
                                        text2: '4hours',
                                        text3: '21mins'),
                                  ),
                                  const TimePickerRow(
                                      text1: '3', text2: '5', text3: '22'),
                                  const TimePickerRow(
                                      text1: '4', text2: '6', text3: '23'),
                                ]),
                              )
                            ],
                          )
                        ],
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
