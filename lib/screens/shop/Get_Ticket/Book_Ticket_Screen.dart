import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/shop/Get_Ticket/All_Ticket_Screen.dart';

import '../widgets/GetTicketScreeenAppBar.dart';

class BookTicketScreen extends StatefulWidget {
  const BookTicketScreen({super.key});

  @override
  State<BookTicketScreen> createState() => _BookTicketScreenState();
}

class _BookTicketScreenState extends State<BookTicketScreen> {
  String selectedValue = '1';
  List<String> dropdownItems = ['1', '2', '3'];
  int quantityofProduct = 0;
  bool isAdultBelow60 = false;
  bool isChildren = false;
  bool isAdult60plus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetTicketScreenAppBar(
        appBartxt: 'Book Ticket',
      ),
      body: Center(
        child: SizedBox(
          width: Get.width * 0.9,
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                incomingMatchContainer(),
                sizedBox(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    homeButton(() {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return AllTicketScreen();
                      }));
                    }, Color(0xff1566C9), 'Home', kHeading55),
                    homeButton(
                        () {},
                        Color(0xff8F90A6),
                        'Away',
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ],
                ),
                sizedBox(25),
                question("What type of ticket do you want?"),
                sizedBox(5),
                ageBOx((val) {
                  isAdultBelow60 = val!;
                  isChildren = false;
                  isAdult60plus = false;
                  setState(() {});
                }, (val) {
                  isAdultBelow60 = false;
                  isChildren = val!;
                  isAdult60plus = false;
                  setState(() {});
                }, (val) {
                  isAdultBelow60 = false;
                  isChildren = false;
                  isAdult60plus = val!;
                  setState(() {});
                }, isAdultBelow60, isChildren, isAdult60plus),
                sizedBox(20),
                quantityController(),
                sizedBox(10),
                question('Select Seat'),
                sizedBox(10),
                seatSelector(),
                sizedBox(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    homeButton(
                        () {}, Color(0xff1566C9), 'View Seat', kHeading55),
                    homeButton(
                        () {},
                        Color(0xff8F90A6),
                        'Make Payment',
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ],
                ),
                sizedBox(15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget incomingMatchContainer() {
    return Container(
      height: Get.height * 0.15,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color.fromARGB(255, 211, 214, 245)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              width: Get.width * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/shop/idezia.png',
                    width: Get.width * 0.08,
                  ),
                  const Text('Fulham')
                ],
              ),
            ),
            const Text('vs'),
            SizedBox(
              width: Get.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/shop/Wolverhampton.png',
                    width: Get.width * 0.08,
                  ),
                  const Text('Wolverhampton')
                ],
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: Get.width * 0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/shop/calendar.svg',
                      fit: BoxFit.contain,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '9 May 2021',
                          style: TextStyle(fontSize: 13),
                        ),
                        const Text('19 : 45'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/shop/ground.svg',
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      'Craven Cottage',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget homeButton(
      VoidCallback tap, Color color, String txt, TextStyle txtStyle) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: Get.height * 0.06,
        width: Get.width * 0.38,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            txt,
            style: txtStyle,
          ),
        ),
      ),
    );
  }

  Widget question(String txtQuestion) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txtQuestion,
          style: kHeading55,
        ),
      ],
    );
  }

  Widget ageBOx(
      void Function(bool?) isAdultbelow60tap,
      void Function(bool?) isChildrentap,
      void Function(bool?) isAdult60plustap,
      bool isAdultbelow60,
      isChildren,
      isAdult60Plus) {
    return Column(
      children: [
        sizedBox(10),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isAdultBelow60 == true
                  ? Color(0xff8F90A6)
                  : Color(0xff2B2B3D),
            ),
          ),
          height: Get.height * 0.07,
          width: Get.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Adult below 60',
                style: kHeading6,
              ),
              Text(
                '\$ 25',
                style: kHeading6,
              ),
              Checkbox(value: isAdultbelow60, onChanged: isAdultbelow60tap),
            ],
          ),
        ),
        sizedBox(10),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isChildren == true ? Color(0xff8F90A6) : Color(0xff2B2B3D),
            ),
          ),
          height: Get.height * 0.07,
          width: Get.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Children',
                style: kHeading6,
              ),
              Text(
                '\$ 25',
                style: kHeading6,
              ),
              Checkbox(value: isChildren, onChanged: isChildrentap),
            ],
          ),
        ),
        sizedBox(10),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color:
                  isAdult60Plus == true ? Color(0xff8F90A6) : Color(0xff2B2B3D),
            ),
          ),
          height: Get.height * 0.07,
          width: Get.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Adult 60+',
                style: kHeading6,
              ),
              Text(
                '\$ 25',
                style: kHeading6,
              ),
              Checkbox(value: isAdult60Plus, onChanged: isAdult60plustap),
            ],
          ),
        ),
      ],
    );
  }

  Widget quantityController() {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.9,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Adult 60+', style: kHeading6),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      quantityofProduct = quantityofProduct + 1;
                      setState(() {});
                    },
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Color(0xff6B7588),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Text(
                      quantityofProduct.toString(),
                      style: kHeading6,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (quantityofProduct > 0) {
                        quantityofProduct = quantityofProduct - 1;
                        setState(() {});
                      }
                    },
                    child: Icon(
                      Icons.remove,
                      size: 20,
                      color: Color(0xff6B7588),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff6B7588)),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget seatSelector() {
    return Container(
      height: Get.height * 0.13,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff6B7588)),
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
          height: Get.height * 0.04,
          width: Get.width * 0.16,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff6B7588)),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton(
            underline: SizedBox(),
            icon: SizedBox(),
            dropdownColor: Color.fromARGB(255, 4, 28, 73),
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
}
