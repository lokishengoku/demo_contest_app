import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SmallContestItem extends GetWidget {
  final String status;
  final String title;
  final String imgUrl;
  final String time;
  const SmallContestItem({
    Key? key,
    required this.title,
    required this.time,
    required this.imgUrl,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFebf8fd),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imgUrl),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  style: TextStyle(
                    color: Color(0xFFfdebb2),
                    fontSize: 12,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF3b3f42),
                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: 70,
              height: 70,
              child: Text(
                time,
                style: TextStyle(
                  fontSize: 10,
                  decoration: TextDecoration.none,
                  color: Color(0xFFb2b8bb),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
