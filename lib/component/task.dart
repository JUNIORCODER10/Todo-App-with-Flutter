import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


// ignore: must_be_immutable
class Task extends StatelessWidget {
  
  final int id;
  final String title;
  final bool isCompleted;
  Function (bool?)? onChanged;
  Function (BuildContext)? deleteFunction;

  
   Task({super.key, required this.id , required this.title,required this.isCompleted, required this.onChanged, required this.deleteFunction});
  
  @override
  Widget build(BuildContext context) {
    
    return  Padding(
      padding: const EdgeInsets.all(13.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          
           children: [
             SlidableAction(
              onPressed: deleteFunction,
              backgroundColor: Colors.red,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(22),

              )
           ]
           ),
        child: Container(
            padding: const EdgeInsets.all(14.0),
            // ignore: sort_child_properties_last
            child: Row(children: [
            
             Text(id.toString()) ,
             const SizedBox(width: 40,),
              Expanded(child: Text(title,
              style: TextStyle(
                color: Color.fromARGB(255, 21, 32, 42),
                fontSize: 19,
                decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none
              ),)),
              Checkbox(value: isCompleted, onChanged: onChanged,
             
              activeColor: Color.fromARGB(255, 21, 32, 42))
            ],),
          
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(23)
          ),
        ),
      ),
    );
  }
}