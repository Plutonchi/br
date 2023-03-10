import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AddTaks extends StatefulWidget {
  const AddTaks({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddTaksState createState() => _AddTaksState();
}

class _AddTaksState extends State<AddTaks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "ADD STUDENT",
          style: TextStyle(
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
                    title: 'Add',
                    color: Color(0xff1AB8DB),
                  ),
                  ElevatedButtonWidget(
                    title: 'Cancel',
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

