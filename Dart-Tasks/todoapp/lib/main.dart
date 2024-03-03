import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todoapp/pages/createTask.dart';
import 'package:todoapp/pages/getStarted.dart';
import 'package:todoapp/pages/taskDetail.dart';
import 'package:todoapp/pages/todolist.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:todoapp/main.dart' as app;
// import 'package:todo';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  await Hive.openBox('TodoList'); // Open your box here
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
      // home: TodoList(),
      // home: CreateTask(),
      // home: TaskDetail(),
    );
  }
}
