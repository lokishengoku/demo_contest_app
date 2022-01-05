import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopItem extends GetWidget {
  final String name;
  final String entry;
  final String imgUrl;
  const TopItem({
    Key? key,
    required this.name,
    required this.entry,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.only(left: 25, right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFebf8fd),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  name,
                  style: TextStyle(
                    color: Color(0xFF3b3f42),
                    fontSize: 18,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  entry,
                  style: TextStyle(
                    color: Color(0xFFfdebb2),
                    fontSize: 12,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFf3fafc),
              ),
              child: Center(
                child: Icon(
                  Icons.notifications,
                  color: Color(0xFF69c5df),
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
