import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/shop/Get_Ticket/Ticket_Detaile_Screen.dart';

class SelectSeatTicketDetailsScreen extends StatefulWidget {
  const SelectSeatTicketDetailsScreen({super.key});

  @override
  State<SelectSeatTicketDetailsScreen> createState() =>
      _SelectSeatTicketDetailsScreenState();
}

class _SelectSeatTicketDetailsScreenState
    extends State<SelectSeatTicketDetailsScreen> {
  String selectedValue = '1';
  List<String> dropdownItems = ['1', '2', '3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: Get.height,
          width: Get.width * 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: [
                sizedBox(Get.height * 0.15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Select your seat',
                      style: kHeading4,
                    ),
                    customButton(() {}, const Color(0xff1566C9), "View with AR",
                        kHeading7)
                  ],
                ),
                sizedBox(10),
                seatContaienr(),
                sizedBox(10),
                const Row(
                  children: [
                    Text(
                      'Seat Select',
                      style: kHeading55,
                    ),
                  ],
                ),
                seatSelector(),
                sizedBox(30),
                customButton1(() {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return TicketDetailScreen();
                  }));
                }, const Color(0xff1566C9), "Done", kHeading55)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget seatSelector() {
    return Container(
      height: Get.height * 0.13,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff6B7588)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          dropdowns('Access'),
          dropdowns('Row'),
          dropdowns('Seats'),
        ],
      ),
    );
  }

  Widget dropdowns(String txt) {
    return Column(
      children: [
        Text(
          txt,
          style: kHeading6,
        ),
        Container(
          height: Get.height * 0.05,
          width: Get.width * 0.16,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff6B7588)),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton(
            underline: SizedBox(),
            icon: SizedBox(),
            dropdownColor: const Color.fromARGB(255, 4, 28, 73),
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Container(
                  height: Get.height * 0.03,
                  width: Get.width * 0.05,
                  child: Center(
                    child: Text(
                      value,
                      style: kHeading8,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget seatContaienr() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: SvgPicture.asset(
          'assets/shop/stadium2.svg',
          fit: BoxFit.contain,
        ));
  }

  Widget sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget customButton(
      VoidCallback tap, Color color, String txt, TextStyle txtStyle) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: Get.height * 0.05,
        width: Get.width * 0.25,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            txt,
            style: txtStyle,
          ),
        ),
      ),
    );
  }

  Widget customButton1(
      VoidCallback tap, Color color, String txt, TextStyle txtStyle) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: Get.height * 0.05,
        width: Get.width * 0.25,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            txt,
            style: txtStyle,
          ),
        ),
      ),
    );
  }
}
