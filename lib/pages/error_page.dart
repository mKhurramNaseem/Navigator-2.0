import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const title = 'Error Page';
  static const pageName = 'errorpage/';
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
