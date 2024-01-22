import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/shop/Get_Ticket/Payment_Successful_Screen.dart';
import '../widgets/GetTicketScreeenAppBar.dart';

class MakePaymentScreen extends StatefulWidget {
  const MakePaymentScreen({super.key});

  @override
  State<MakePaymentScreen> createState() => _MakePaymentScreenState();
}

class _MakePaymentScreenState extends State<MakePaymentScreen> {
  String groupValue = 'yes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GetTicketScreenAppBar(appBartxt: 'Make Payment'),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xff1E1E3E)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/shop/ground.svg',
                        height: Get.height * 0.15,
                        fit: BoxFit.contain,
                      ),
                      const Text(
                        'Craven Cottage',
                        style: kHeading55,
                      ),
                      sizedBox(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: Get.width * 0.2,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/shop/Wolverhampton.png',
                                  width: Get.width * 0.08,
                                ),
                                Image.asset(
                                  'assets/shop/idezia.png',
                                  width: Get.width * 0.08,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.55,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Fulham',
                                  style: kHeading6,
                                ),
                                Text(
                                  'vs',
                                  style: kHeading7,
                                ),
                                Text(
                                  'Wolverhampton',
                                  style: kHeading6,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      sizedBox(25),
                      textWithDevider('Date', '9 May,2021    19:45pm UK'),
                      textWithDevider('Quantity', '1 x        Adult Ticket'),
                      textWithDevider(
                          'Allocation', 'Access: 2    Row: 3    Seat: 52'),
                      textWithDevider('Price', '\$ 25.00'),
                      textWithDevider('Tax', '\$ 0.85'),
                      textWithDevider('Grand Total', '\$ 25.85'),
                      sizedBox(15),
                      customRadioButton()
                    ],
                  ),
                ),
              ),
            ],
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

  Widget customRadioButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Select payment method',
                style: kHeading11,
              ),
              sizedBox(10),
              radioButton('yes0', "Apple Pay", 'assets/shop/Vector_1.png', ''),
              radioButton('yes2', "Kaspi", 'assets/shop/Frame737.png', ''),
              radioButton('yes1', "4716 •••• •••• 5615", 'assets/shop/Visa.png',
                  '06/24'),
              addBankRow(),
              sizedBox(30),
              SizedBox(
                width: Get.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customButton(() {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return PaymentSuccessfulScreen();
                      }));
                    }, const Color(0xff1566C9), 'Pay \$ 25.85', kHeading55),
                  ],
                ),
              ),
              sizedBox(30),
            ],
          ),
        ),
      ],
    );
  }

  Widget addBankRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/shop/addicon.svg',
          ),
          widthsizedbox(20),
          const Text(
            'Add bank card',
            style: kHeading11,
          ),
        ],
      ),
    );
  }

  Widget radioButton(String val, buttonName, img, date) {
    return SizedBox(
      width: Get.width * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xff1566C9)),
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xff8F90A6)),
                  activeColor: const Color(0xff1566C9),
                  value: val,
                  groupValue: groupValue,
                  onChanged: (value) {
                    groupValue = value!;
                    setState(() {});
                  }),
              widthsizedbox(10),
              Image.asset(
                img,
                height: Get.height * 0.03,
              ),
              widthsizedbox(10),
              Text(
                buttonName,
                style: kHeading11,
              ),
              widthsizedbox(10),
              Text(
                date,
                style: kHeading11,
              ),
            ],
          ),
          SizedBox(
            width: Get.width * 0.78,
            child: const Divider(
              thickness: 0.3,
              color: Color(0xffC7C9D9),
            ),
          )
        ],
      ),
    );
  }

  Widget widthsizedbox(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget customButton(
      VoidCallback tap, Color color, String txt, TextStyle txtStyle) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: Get.height * 0.06,
        width: Get.width * 0.6,
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

  Widget textWithDevider(
    String header,
    content,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: Get.height * 0.07,
          width: Get.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                style: kHeading9,
              ),
              Text(
                content,
                style: kHeading6,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffC7C9D9),
              )
            ],
          )),
    );
  }
}
