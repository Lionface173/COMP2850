import 'package:flutter/material.dart';

class TodoCard extends StatefulWidget {
  final String todoText;

  const TodoCard({super.key, required this.todoText});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  bool _isTodoChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Row(
        children: [
          Expanded(
            child: Text(widget.todoText),
          ), //Expanded
          Center(
            child: Checkbox(
              value: _isTodoChecked,
              onChanged: (value) {
                setState(
                      () {
                    _isTodoChecked = value!;
                  },
                );
              },
            ),  //Checkbox
          ),  //Center
        ],
      ),  //Row
    );  //Container
  }
}