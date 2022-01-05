import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SectionHeader extends GetWidget {
  final String title;
  final Function onPressShowAll;
  const SectionHeader({
    Key? key,
    required this.title,
    required this.onPressShowAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF1f2326),
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
          Expanded(child: Container()),
          Text(
            "Show all",
            style: TextStyle(
              color: Color(0xFFcfd5b3),
              fontSize: 15,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFfdc33c),
            ),
            child: GestureDetector(
              onTap: () => onPressShowAll(),
            ),
          ),
        ],
      ),
    );
  }
}
