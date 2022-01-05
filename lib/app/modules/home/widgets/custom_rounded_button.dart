import 'package:flutter/material.dart';

class CustomRoundedButton extends Container {
  final Function function;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Color splashColor;
  final double fontSize;
  final double width;
  final double height;

  CustomRoundedButton({
    required this.function,
    required this.text,
    this.splashColor = Colors.blueGrey,
    this.fontSize = 16,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.width = 200,
    this.height = 70,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: buttonColor,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () => function(),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
