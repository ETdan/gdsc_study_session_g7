import 'package:flutter/material.dart';

class TaskDetail extends StatefulWidget {
  const TaskDetail({super.key});

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Task Detail")),
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
            Center(
                child: Container(
              height: 200,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              // color: Colors.amber,
              child: Image.network(
                  "https://images.unsplash.com/photo-1597730945481-f35a5cf39021?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGRyYXdpbmd8ZW58MHx8MHx8fDA%3D"),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Title",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 162, 157, 157),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  padding: EdgeInsets.all(20),
                  child: const Text(
                    "Ui/UX App Design",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                const Text("Discription",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                // color: Colors.amberAccent,

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 162, 157, 157),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const Text("Deadline",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 162, 157, 157),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  padding: EdgeInsets.all(20),
                  child: const Text(
                    "April, 29, 2023",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
