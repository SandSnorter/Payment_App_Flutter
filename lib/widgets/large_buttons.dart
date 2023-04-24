import 'package:flutter/material.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final String text;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;
  const AppLargeButton({Key? key,
    this.backgroundColor: Colors.black,
    required this.text,
    this.textColor,
    this.onTap,
    this.isBorder: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 36,right: 36),
        height: 55,
        width: MediaQuery.of(context).size.width-70,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Colors.black,
          )
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
