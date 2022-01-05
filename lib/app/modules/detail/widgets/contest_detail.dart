import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContestDetail extends GetWidget {
  final String title;
  final String desciption;
  final String deadline;
  final int prize;
  final String entry;
  const ContestDetail({
    Key? key,
    required this.title,
    required this.desciption,
    required this.deadline,
    required this.prize,
    required this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFfcfffe),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 1,
            offset: Offset(0, 10),
            color: Colors.grey.withOpacity(0.2),
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          top: 20,
          bottom: 20,
          right: 20,
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
                  ),
                ),
                Expanded(child: Container())
              ],
            )),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: Text(
                desciption,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFb8b8b8),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1.0,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.watch_later, color: Color(0xFF69c5df)),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          deadline,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Deadline",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFacacac),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.monetization_on,
                      color: Color(0xFFfb8483),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          prize.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Prize",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(
                              0xFFacacac,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Color(0xFFfbc33e)),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          entry,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Entry",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFacacac),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
