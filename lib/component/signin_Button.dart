

import 'package:flutter/material.dart';


class SigninButton extends StatelessWidget {
  final Function()? onTap;
  const SigninButton({super.key, required this.onTap});

 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(22.0),

        decoration:  BoxDecoration(
              borderRadius:BorderRadius.circular(12) ,
              color: const Color.fromRGBO(0, 0, 0, 1),
              
            ),
        child:  const Center(
            child: Text('Sign In ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
              
            ),
            )
            ),
      ),
    );
    
  }
}