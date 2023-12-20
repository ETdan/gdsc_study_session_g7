import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Create Task")),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Color.fromRGBO(238, 111, 87, 1.0),
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Main task name",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(238, 111, 87, 1.0)),
                    )),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                    // border: OutlinedBorder(),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      labelText: 'Enter your text',
                    ),
                  ),
                ),
                SizedBox(height: 30),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Main task name",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          fontSize: 18,
                          color: Color.fromRGBO(238, 111, 87, 1.0)),
                    )),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                    // border: OutlinedBorder(),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      labelText: 'Enter your text',
                    ),
                  ),
                ),
                SizedBox(height: 30),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Main task name",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          fontSize: 18,
                          color: Color.fromRGBO(238, 111, 87, 1.0)),
                    )),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                    // border: OutlinedBorder(),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      labelText: 'Enter your text',
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 200,
                      child: (ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(238, 111, 87, 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: const Text(
                            "Add Task",
                            style: TextStyle(color: Colors.white),
                          ))))
                ]),
              ],
            )
          ]),
        ));
  }
}
