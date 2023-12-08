import 'package:flutter/material.dart';
import 'package:navigator_2_base/model/student.dart';


class SecondPage extends StatefulWidget {
  static const title = 'Second Page';
  static const pageName = '/secondpage';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Student? result;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          SecondPage.title,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor:
            Theme.of(context).floatingActionButtonTheme.backgroundColor,
      ),
    );
  }
}
