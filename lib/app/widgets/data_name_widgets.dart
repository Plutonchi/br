import 'package:flutter/material.dart';

class Date_Name_Widget extends StatelessWidget {
  const Date_Name_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffD9D9D9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            "9 Sep 2023",
            style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
          ),
          Text(
            "Bobur",
            style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
          ),
        ],
      ),
    );
  }
}
