import 'package:flutter/material.dart';
import 'package:todoapp/pages/createTask.dart';
import 'package:todoapp/pages/getStarted.dart';
import 'package:todoapp/pages/taskDetail.dart';
import 'package:todoapp/pages/todolist.dart';
// import 'package:todo';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: GetStarted(),
    );
  }
}
