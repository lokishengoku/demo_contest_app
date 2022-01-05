import 'package:demo_contest_app/app/global_widgets/top_item.dart';
import 'package:demo_contest_app/app/modules/content/widgets/big_contest_item.dart';
import 'package:demo_contest_app/app/modules/content/widgets/section_header.dart';
import 'package:demo_contest_app/app/modules/content/widgets/small_contest_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/content_controller.dart';

class ContentView extends GetView<ContentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        color: Color(0xFFc5e5f3),
        child: Column(
          children: [
            //james smith
            TopItem(
              name: "James Smith",
              entry: "Top Level",
              imgUrl: "assets/images/background.jpg",
            ),
            SizedBox(
              height: 30,
            ),
            //popular contest
            SectionHeader(title: "Popular Contest", onPressShowAll: () {}),
            SizedBox(
              height: 20,
            ),
            //list
            Container(
              height: 220,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.88),
                itemCount: 4,
                itemBuilder: (_, i) => BigContestItem(
                  index: i,
                  title: "Title",
                  description: "Text",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //recent contests
            SectionHeader(title: "Recent Contests", onPressShowAll: () {}),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (_, i) => SmallContestItem(
                    title: "Text",
                    time: "Time",
                    imgUrl: "assets/images/background.jpg",
                    status: "status",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
