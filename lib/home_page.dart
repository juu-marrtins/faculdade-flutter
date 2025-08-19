import 'package:faculdade_flutter/app_routes.dart';
import 'package:faculdade_flutter/widgets/welcome_text.dart';
import 'package:faculdade_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo ao flutter'),
      ),
      body: const Center(
        child: WelcomeText(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.pushNamed(context, AppRoutes.cadastro);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}