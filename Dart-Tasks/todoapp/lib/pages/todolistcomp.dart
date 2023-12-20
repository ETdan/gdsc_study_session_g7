import 'package:flutter/material.dart';
import 'package:todoapp/pages/taskDetail.dart';

class listContainer extends StatefulWidget {
  const listContainer({super.key});

  @override
  State<listContainer> createState() => _listContainerState();
}

class _listContainerState extends State<listContainer> {
  void _onContainerPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TaskDetail()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onContainerPressed,
        child: Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Row(children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    "u",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28),
                  )),
              const Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Text(
                    "Ui/UX App Design",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ]),
              Container(
                height: 100,
                child: Text("april, 29, 2023"),
              ),
            ])));
  }
}
