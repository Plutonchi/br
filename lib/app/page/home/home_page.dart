// ignore_for_file: library_private_types_in_public_api

import 'package:br/app/page/page.dart';
import 'package:br/app/widgets/data_name_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 70,
                color: const Color(0xff222222),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 25,
                  ),
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    'assets/logo/logo.png',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Todos",
                  style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View all",
                    style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Container(
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
                    "Date",
                    style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return  const Date_Name_Widget();
                },
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: const BorderSide(
                    color: Colors.greenAccent,
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  child: Text(
                    'Load More...',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(
                        0xff1AB8DB,
                      ),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 55,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTaks()),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
