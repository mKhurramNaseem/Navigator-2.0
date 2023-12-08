import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const title = 'Home Page';
  static const pageName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          HomePage.title,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body:const ColoredBox(color: Colors.pink,)
    );
  }

  
}
