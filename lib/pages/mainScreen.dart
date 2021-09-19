import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text('Todo list'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text('Main Screen'),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacementNamed(context, '/todo');
            }, child: Text('Go next'))
          ],
        ));
  }
}
