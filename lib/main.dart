import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/modals/task_data.dart';
import 'package:to_do_list/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(
   BuildContext context) {
  
    return ChangeNotifierProvider<TaskData>(
    create: (context) =>TaskData(),
      
      child: MaterialApp(
        home: TrackScreen(),
      ),
    );
    
  }
}
