import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Function()? onTap;
  final double? fontSize;
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;

  const AppButtons({
    Key? key,
    this.fontSize = 20,
    this.textColor = Colors.indigo,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.indigo,
    this.text,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
          ),
          text != null
              ? Text(text!, style: TextStyle(fontSize: 14, color: textColor))
              : Container(),
        ],
      ),
    );
  }
}
