import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BigContestItem extends GetWidget {
  final int index;
  final String title;
  final String description;
  const BigContestItem({
    Key? key,
    required this.index,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 20),
        height: 220,
        width: MediaQuery.of(context).size.width - 20,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFb8eefc),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1.0,
            ),
            Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
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
          ],
        ),
      ),
    );
  }
}
