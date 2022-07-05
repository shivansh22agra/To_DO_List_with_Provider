import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/modals/task_data.dart';

class AddTrackScreen extends StatelessWidget {
  String? Taskname;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(left: 200, right: 200),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
          ),
          TextField(
            onChanged: (value) {
              Taskname = value;
            },
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              
              Provider.of<TaskData>(context,listen: false).addT(Taskname!);
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 100,
              color: Colors.lightBlueAccent,
              child: Center(
                child: Text(
                  "Add Label",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
