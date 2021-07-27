import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> data = [
    {'image': 'assets/Basketball.png'},
    {'image': 'assets/Cycling.png'},
    {'image': 'assets/Football.png'},
    {'image': 'assets/Running.png'},
    {'image': 'assets/swimming.png'},
    {'image': 'assets/Tennis.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 10,
        shadowColor: Colors.transparent,
        title: Text(
          'Hey Codetodo,',
          style: TextStyle(fontSize: 35, color: Color(0xff2b2e5f)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.person_outline,
              size: 40,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('What are want to do?',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 23, color: Colors.grey[400])),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return Image.asset(data[index]['image']);
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.home),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.equalizer),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.settings)),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.info))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
