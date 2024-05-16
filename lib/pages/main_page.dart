import 'package:dars37/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double joylashuv = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        actions: [
          IconButton(
            onPressed: () async {
              joylashuv = await Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return HomePage(joylashuv);
                }),
              );
              setState(() {});
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
