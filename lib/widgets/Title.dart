import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserTitle extends StatelessWidget{
  final String name;

  UserTitle(this.name);

  @override
  Widget build(BuildContext context){
    return Center(
      child: RichText(
        text: TextSpan(
          text: "Hello, \n",
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 18
          ),
          children: <TextSpan>[
            TextSpan(
              text: name,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 24
              )
            )
          ]
        ),
      ),
    );
  }
}