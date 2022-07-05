import 'package:flutter/material.dart';

class ResusableTask extends StatelessWidget {
  ResusableTask(
      {this.text,
      required this.isChecked,
      this.CheckonCallback,
      this.longpressCallback});
  String? text;
  final bool isChecked;
  final Function? CheckonCallback;
  final Function? longpressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longpressCallback!();
      },
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) {
            CheckonCallback!(value);
          }),
      title: Text(
        text!,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
