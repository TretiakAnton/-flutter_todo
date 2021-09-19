import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/home.dart';
import 'package:flutter_todo/pages/mainScreen.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      initialRoute: '/',
  routes: {
        '/':(context)=> MainScreen(),
    '/todo':(context)=> Home(),
  },
    ));
