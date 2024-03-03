import 'package:flutter/material.dart';
import 'package:todoapp/pages/createTask.dart';
import 'package:todoapp/pages/todolistcomp.dart';
import 'package:todoapp/DataBase/dataBase.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final ToDoDataBase _dataBase = ToDoDataBase();

  @override
  void initState() {
    super.initState();
    _loadData(); // Call the method directly without await
  }

// Method to load data from the database
  void _loadData() {
    _dataBase.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Task Detail")),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1597730945481-f35a5cf39021?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGRyYXdpbmd8ZW58MHx8MHx8fDA%3D",
                  ),
                ),
              ),
              _buildListView(), // Build the ListView based on data from the database
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateTask(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(238, 111, 87, 1.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                child: const Text(
                  "Create Task",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListView() {
    if (_dataBase.toDoList.isEmpty) {
      return const CircularProgressIndicator(); // Show loading indicator if data is not loaded yet
    } else {
      return ListView.builder(
        key: UniqueKey(),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: _dataBase.toDoList.length,
        itemBuilder: (context, index) {
          final task = _dataBase.toDoList[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: listContainer(
              title: task[0], // Use the correct index for the title
              date: task[1], // Use the correct index for the date
            ),
          );
        },
      );
    }
  }
}
