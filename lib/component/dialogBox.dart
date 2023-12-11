import 'package:flutter/material.dart';
import 'package:todolist/component/my_Button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final  controller;
  VoidCallback onSave;
  VoidCallback onCancel;
     DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return   AlertDialog(
     backgroundColor: Color.fromARGB(255, 21, 32, 42),
     content: Container(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
            hintText: 'add a new task'
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            MyButton(text: 'Save', onPressed: onSave),
            const SizedBox( width: 8),

             MyButton(text: 'cancel', onPressed: onCancel)
          ],
        )
      ],),

     ),
    );
  }
}
