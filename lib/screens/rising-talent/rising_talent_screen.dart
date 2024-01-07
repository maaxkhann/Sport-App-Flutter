import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'widgets/reusable_container_widget.dart';

class RisingTalentScreen extends StatefulWidget {
  const RisingTalentScreen({Key? key}) : super(key: key);

  @override
  State<RisingTalentScreen> createState() => _RisingTalentScreenState();
}

class _RisingTalentScreenState extends State<RisingTalentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Get.width*.05,vertical: Get.height*.02),
          child: ListView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: Get.width*.8,
                      height: 56.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF222232),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          SvgPicture.asset(
                            'assets/common-icons/search.svg', 
                            width: 20.0,
                            height: 20.0,
                            color: Colors.white, 
                          ),
                          
                          SizedBox(width: Get.width*.02),
                            Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: 'Search for products',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF65656B)),
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: Get.width*.02,),
                    SvgPicture.asset('assets/rising-talent-icons/sort.svg',
                      width: 24,
                      height: 24,
                    )
                  ],
                ),
              ),
              SizedBox(height: Get.height*.02,),
              const Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Trending",

                      // Body Medium 18px / Semibold
                      style : TextStyle(
                        fontSize : 18,
                        //fontFamily = FontFamily(Font(R.font.mulish)),
                        fontWeight : FontWeight.w600,
                        color : Color(0xFFFFFFFF),
                      )
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18,)
                ],
              ),
              SizedBox(height: Get.height*.02,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising1.png',
                    description: 'Zhou QI Chinese basketball\n youngster wowing NCAA',
                  ),
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising2.png',
                    description: 'Korey Adams: The 3 year old who took 2 cricket ball in Under 11 games',
                  ),

                ],
              ),
              SizedBox(height: Get.height*.01,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising1.png',
                    description: 'Zhou QI Chinese basketball\n youngster wowing NCAA',
                  ),
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising2.png',
                    description: 'Korey Adams: The 3 year old who took 2 cricket ball in Under 11 games',
                  ),

                ],
              ),
              SizedBox(height: Get.height*.02,),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended",

                      // Body Medium 18px / Semibold
                      style : TextStyle(
                        fontSize : 18,
                        //fontFamily = FontFamily(Font(R.font.mulish)),
                        fontWeight : FontWeight.w600,
                        color : Color(0xFFFFFFFF),
                      )
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18,)
                ],
              ),
              SizedBox(height: Get.height*.01,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising3.png',
                    description: 'Arder Guler Fernabahce’s 15 year-\nold wonder kid',
                  ),
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising4.png',
                    description: 'Victor Weyamba NBA 16 year- old\nwonder kid',
                  ),

                ],
              ),
              SizedBox(height: Get.height*.01,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising3.png',
                    description: 'Arder Guler Fernabahce’s 15 year-\nold wonder kid',
                  ),
                  ReusableContainer(
                    bgImage: 'assets/rising-talent-icons/rising4.png',
                    description: 'Victor Weyamba NBA 16 year- old\nwonder kid',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
