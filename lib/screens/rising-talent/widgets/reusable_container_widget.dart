import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    required this.bgImage,
    required this.description,

    super.key,
  });
  final String bgImage;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*.44,
      height: Get.height*.19,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color(0xFF222232)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: Get.width*.01,vertical: Get.height*.01),
                child: Container(
                  width: Get.width*.44,
                  height: Get.height*.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:  const Color(0x33000000)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(bgImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Get.width * 0.3,
                bottom: Get.height * 0.015,
                child: const Row(
                  children: [
                    Icon(Icons.remove_red_eye_outlined,size: 14,color: Colors.white70,),
                    SizedBox(width: 5,),
                    Text("446k",
                        style : TextStyle(
                            fontSize : 8,
                            //fontFamily = FontFamily(Font(R.font.mulish)),
                            fontWeight : FontWeight.w400,
                            color : Color(0xFFFFFFFF),
                            letterSpacing: 0.4
                        )
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: Get.width*.01),
            child:  Text(
                description,
                style : const TextStyle(
                  fontSize :8,

                  //fontFamily = FontFamily(Font(R.font.mulish)),
                  fontWeight : FontWeight.w600,
                  color : Color(0xFFFFFFFF),
                )
            ),
          )
        ],
      ),
    );
  }
}