import 'package:flutter/material.dart';

class my_button extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const my_button({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
        ),
        child: Text(
          text,style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}