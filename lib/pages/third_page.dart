import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static const title = 'Third Page';
  static const pageName = '/thirdpage';
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          ThirdPage.title,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: Center(
            child: Text(
              'Third Page',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
