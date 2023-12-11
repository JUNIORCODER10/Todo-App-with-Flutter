
import 'package:flutter/material.dart';
import 'package:todolist/component/dialogBox.dart';
import 'package:todolist/component/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
final _controller = TextEditingController();
int id_counter = 0;
 late List<List<dynamic>> taskList; // Déclarez taskList

  @override
  void initState() {
    super.initState();

    // Initialisez taskList dans la méthode initState avec les IDs auto-incrémentés
    taskList = [
      [++id_counter, 'first Task', false],
      [++id_counter, 'second Task', false],
      [++id_counter, 'third Task', false],
    ];
  }

  void checkboxChange(bool? value, int index){
    setState(() {
      taskList[index][2] = !taskList[index][2];
    });
  }
 
  void saveNewTask(){
    setState(() {
      taskList.add([++id_counter,_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void creatNewTask(){
   showDialog(context: context, 
   builder: (context){
    return  DialogBox(
      controller: _controller,
       onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
        );
    
   });
  }
  
  void deleteTask(int index){
   setState(() {
     taskList.removeAt(index);
   });
  }
  


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 32, 42),
      
      appBar: AppBar(
        
        title: const Center
        (child:  Text('To Do App',
        style: TextStyle(
          color: Color.fromARGB(255, 21, 32, 42),
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),)),
        elevation: 0,
        backgroundColor: Colors.grey[300],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: creatNewTask,
        child: const Icon(Icons.add,
        color: Color.fromARGB(255, 21, 32, 42),),
        ),
      body: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: taskList.length,
        itemBuilder: ((context, index) {
          return Task(id: taskList[index][0], title: taskList[index][1], isCompleted: taskList[index][2],
           onChanged: (value) => checkboxChange(value, index),
            deleteFunction: (context) => deleteTask(index),
             );
        }),
        )
    );
  }
}