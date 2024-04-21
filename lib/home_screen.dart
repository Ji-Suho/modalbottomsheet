import 'package:flutter/material.dart';
import 'package:modalbottomsheet/info_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void openSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => InfoPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: openSheet,
            icon: Icon(Icons.info),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Home Page')],
        ),
      ),
    );
  }
}
