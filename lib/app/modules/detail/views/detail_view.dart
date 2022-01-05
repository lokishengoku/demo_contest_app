import 'package:demo_contest_app/app/global_widgets/top_item.dart';
import 'package:demo_contest_app/app/modules/detail/widgets/contest_detail.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color(0xFFc5e5f3),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 10,
              child: IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            Positioned(
              top: 120,
              left: 0,
              height: 100,
              width: width,
              child: Container(
                width: width,
                height: 100,
                margin: const EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFebf8fd),
                ),
                child: TopItem(
                  name: "James Smith",
                  entry: "Top Level",
                  imgUrl: "assets/images/background.jpg",
                ),
              ),
            ),
            Positioned(
              top: 320,
              left: 0,
              width: width,
              height: height,
              child: Container(
                width: 80,
                height: 80,
                color: Color(0xFFf9fbfc),
              ),
            ),
            Positioned(
              top: 250,
              left: 0,
              width: width,
              height: 250,
              child: ContestDetail(
                title: "Title",
                desciption: "Text",
                deadline: "21h",
                prize: 499,
                entry: "Top Level",
              ),
            ),
            Positioned(
              top: 540,
              left: 25,
              height: 50,
              child: Container(
                child: RichText(
                  text: TextSpan(
                    text: "Total Participants ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "(11)",
                        style: TextStyle(color: Color(0xFFfbc33e)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //images
            Stack(
              children: [
                for (int i = 0; i < 5; i++)
                  Positioned(
                    top: 590,
                    left: (20 + i * 35).toDouble(),
                    width: 50,
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/background.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            //favourite
            Positioned(
              top: 670,
              left: 25,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFfbc33e),
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Add to favorite",
                    style: TextStyle(color: Color(0xFFfbc33e), fontSize: 18),
                  )
                ],
              ),
            ),
            //))
          ],
        ),
      ),
    );
  }
}
