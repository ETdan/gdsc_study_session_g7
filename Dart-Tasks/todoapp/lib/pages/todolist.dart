import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Task Detail")),
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Color.fromRGBO(238, 111, 87, 1.0),
            size: 50,
          ),
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
            const Text("Tasks List",
                textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
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
                      // border: OutlinedBorder(),
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
                      )
                    ])),
                const SizedBox(height: 10),
                Container(
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
                      // border: OutlinedBorder(),
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
                      )
                    ])),
                const SizedBox(height: 10),
                Container(
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
                      // border: OutlinedBorder(),
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
                      )
                    ])),
                const SizedBox(height: 10),
                Container(
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
                      // border: OutlinedBorder(),
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
                      )
                    ])),
                const SizedBox(height: 10),
                Container(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(238, 111, 87, 1.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius
                                  .zero, // Set this to zero for square edges
                            ),
                          )),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            )
          ]),
        ));
  }
}
