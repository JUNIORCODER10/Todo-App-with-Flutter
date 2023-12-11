import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final controller;
  final  String hintText;
  final bool obscureText ;
 

  const TextFieldComponent({super.key, required this.hintText, required this.obscureText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 25.0),
              child:  TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration :  InputDecoration( 
                  enabledBorder:  const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Colors.grey[600]
                  )
                ),
              ),
            );
  }
}