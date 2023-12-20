import 'package:flutter/material.dart';
import 'package:todoapp/pages/todolist.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _getStartedState();
}

// ignore: camel_case_types
class _getStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(238, 111, 87, 1.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Image.network(
                "https://images.unsplash.com/photo-1597730945481-f35a5cf39021?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGRyYXdpbmd8ZW58MHx8MHx8fDA%3D"),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TodoList()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
      )),
    ));
  }
}
