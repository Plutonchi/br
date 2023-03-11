// ignore_for_file: camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';

import '../page/page.dart';

class Date_Name_Widget extends StatelessWidget {
  const Date_Name_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context)=> const EditStudent(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 60,
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
        margin: const EdgeInsets.only(bottom: 5),
      ),
    );
  }
}
