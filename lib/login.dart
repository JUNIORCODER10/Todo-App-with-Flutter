import 'package:flutter/material.dart';
import 'package:todolist/component/my_Textfield.dart';
import 'package:todolist/component/signin_Button.dart';
import 'package:todolist/homepage.dart';
import 'package:todolist/component/tile_Square.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   final usernameController = TextEditingController();

   final passwordController = TextEditingController();

   void signinUser(){
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Icon(
                Icons.lock,
                size: 100,
                color: Color.fromARGB(255, 21, 32, 42),
                ),
             const SizedBox(height: 50),
            //welcome back you have been missed
            const Text(
              'welcome back you have been missed',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 16,
                ),

              
              ),
              const SizedBox(height: 25),
            //username texfield
           TextFieldComponent(hintText: 'username', obscureText: false, controller: usernameController),
             
           const SizedBox(height: 15),
            //password texfield
           TextFieldComponent(
            hintText: 'password',
             obscureText: true,
              controller: passwordController),
            //text forgott password
            const SizedBox(height: 10),
             
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end
                  ,
                  children: [
                    Text('forgot password ? '),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            //sign in button
              SigninButton(onTap: signinUser),

            const SizedBox(height: 50),
            //or continue with
              
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 21, 32, 42),
                      ),
                    ),
              
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal:10.0),
                       child: Text('or continu with',
                       style: TextStyle(
                        color: Color.fromARGB(255, 21, 32, 42)
                       ),
                       ),
                     ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 21, 32, 42),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            //google + apple sign in log 
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                TileSquare(imagePath: 'assets/images/google.png',),

                SizedBox(width: 10,),

                TileSquare(imagePath: 'assets/images/apple.png',)
              ],),
            //not a member? register now
            const SizedBox(height: 50),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Text('not a member ?'),
           SizedBox(width: 5,),
           Text('register now',
           style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold
           ),)
           ],)
            ],
            ),
        )
          ),

    );
              
            
              
              
          
  }
}