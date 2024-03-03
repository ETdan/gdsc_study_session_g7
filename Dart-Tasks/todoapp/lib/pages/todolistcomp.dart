import 'package:flutter/material.dart';

class listContainer extends StatefulWidget {
  final String title; // Add title parameter
  final String date; // Add date parameter

  const listContainer({
    Key? key,
    required this.title, // Make title required
    required this.date, // Make date required
  }) : super(key: key);

  @override
  State<listContainer> createState() => _listContainerState();
}

class _listContainerState extends State<listContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle onTap
      },
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
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text(
                "u",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Text(
                    widget.title, // Use the title passed from the parent widget
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  widget.date, // Use the date passed from the parent widget
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
