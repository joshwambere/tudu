import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),//or 15.0
      child: Container(
        height: 30.0,
        width: 30.0,
        color: const Color(0xffFFFFF),
        child: Image.network(
          "https://images.unsplash.com/photo-1536005233760-9894e2a60c3a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
    );
  }
}