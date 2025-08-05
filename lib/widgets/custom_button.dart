
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  const CustomButton({super.key});

  @override

  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {print('AAAAAAAAAAAAAAAAAAAAH!');},
      backgroundColor: Colors.pinkAccent,
      foregroundColor: Colors.tealAccent,
      child: const Icon(Icons.add),
    );
  }
}