import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final double joylashuv;

  const HomePage(this.joylashuv, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Future.delayed(Duration(seconds: 5), () {
    //   scrollController.animateTo(
    //     widget.joylashuv,
    //     duration: Duration(seconds: 1),
    //     curve: Curves.fastOutSlowIn,
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(scrollController.offset);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: const Text("37-Dars"),
        actions: [
          IconButton(
            onPressed: () {
              scrollController.animateTo(
                1000,
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
            icon: const Icon(Icons.ac_unit),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 10,
        children: [
          Container(
            height: 500,
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.orange,
          ),
        ],
      ),

      // GridView(
      //   padding: const EdgeInsets.all(10),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10,
      //     childAspectRatio: 3 / 5,
      //   ),
      //   children: [
      //     Container(
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Container(
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Container(
      //       color: Colors.orange,
      //     ),
      //   ],
      // ),
    );
  }
}
