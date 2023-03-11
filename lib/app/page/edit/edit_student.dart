// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class EditStudent extends StatefulWidget {
  const EditStudent({Key? key}) : super(key: key);

  @override
  _EditStudentState createState() => _EditStudentState();
}

class _EditStudentState extends State<EditStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Edit Students".toUpperCase(),
          style: const TextStyle(
              color: Color(0xff33C500),
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              size: 35,
              color: Color(0xff33C500),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo/logo.png',
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFieldFormWidgets(hintText: "Enter Your Name"),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Text(
                    "Teacher",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFieldFormWidgets(
                hintText: "Teacher Name",
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Text(
                    "Course",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFieldFormWidgets(
                hintText: "Enter Your Course",
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Text(
                    "Date",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFieldFormWidgets(
                hintText: "Click here to choose date",
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ElevatedButtonWidget(
                    title: 'Done!',
                    color: Color(0xff1AB8DB),
                  ),
                  ElevatedButtonWidget(
                    title: 'Delete',
                    color: Color(0xffFF0000),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
