import 'package:demo_contest_app/app/modules/home/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69c5df),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            height: 700,
            child: Container(
              height: 700,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick Your Favourite",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Contests",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 25,
                  child: Text(
                    "We make great design work "
                    "happen with our great community designer",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomRoundedButton(
                  function: () => Get.toNamed("/content"),
                  text: "Get started",
                  buttonColor: Color(0xFffbc33e),
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
