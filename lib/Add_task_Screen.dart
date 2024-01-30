import 'package:flutter/material.dart';
import 'package:todo/model/todo_model.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Task")),

      body: Column(children: [ Card(
        child: Container( 
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          child: TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: 'Enter Title',border: InputBorder.none),
          ),
        ),
      ),
      Card(  
        child: Container( 
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          child: TextField(
            controller: descriptionController,
            minLines: 5,
            maxLines: 8,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'Enter description',border: InputBorder.none),
          ),
        ),
      ),
         const SizedBox(height: 20),
         ElevatedButton(onPressed: () {
                    TODO newTask = TODO(
              title: titleController.text,
              desc: descriptionController.text,
            );
            Navigator.pop(context ,newTask);
         }, child: Text('Add Todo'),)
      ]),
    );
  }
}
