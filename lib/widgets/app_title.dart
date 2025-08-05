
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget{
  const AppTitle({super.key});

  @override

  Widget build(BuildContext context)
  {
    return const Text(
      'Atividade 04/08',
      style: TextStyle(
        fontSize: 20, 
        fontWeight: FontWeight.bold, 
        color: Colors.blue),
    );
  }
}
