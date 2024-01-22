import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sports_app/constant_widgets/bottom_nav_bar_widget.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          GestureDetector(
              onTap: () {
                Get.offAll(() => const BottomNavigationBarWidget());
              },
              child: SvgPicture.asset('assets/shop/Close.svg')),
          const SizedBox(
            width: 5,
          )
        ],
        centerTitle: true,
        title: const Text(
          'Your Ticket',
          style: kHeading55,
        ),
        backgroundColor: const Color(0xff1F293D),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              img(),
              paymentSuccessfultext(),
              sizedBox(10),
              otherText(
                  'Hooray! You have successfully puchased a 1x ticket to watch Fulham vs Wolves Games at Coven Cottage by 19:45pm UK.'),
              otherText("View your Ticket below"),
              sizedBox(15),
              qrCode(),
              dimotherText('Show this code to the gatekeeper at the stadium'),
              sizedBox(5),
              customButton(
                  () {}, const Color(0xff1566C9), "Print Ticket", kHeading55)
            ],
          ),
        ),
      ),
    );
  }

  Widget paymentSuccessfultext() {
    return const Text(
      'Payment Successful',
      style: kHeading4,
    );
  }

  Widget qrCode() {
    return SizedBox(
      height: Get.height * 0.3,
      width: Get.height * 0.3,
      child: Stack(
        children: [
          Container(
            height: Get.height * 0.3,
            width: Get.height * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xffFFFFFF)),
          ),
          QrImageView(
            backgroundColor: Colors.white,
            data: '1234567890',
            version: QrVersions.auto,
            size: 200.0,
          ),
        ],
      ),
    );
  }

  Widget otherText(String txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style: kHeading6,
      ),
    );
  }

  Widget dimotherText(String txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style: kHeading11,
      ),
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

  Widget sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget img() {
    return Image.asset('assets/shop/image194.png');
  }
}
