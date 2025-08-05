import 'package:faculdade_flutter/widgets/app_title.dart';
import 'package:faculdade_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trabalhin?'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 100,
          children: [
            AppTitle(),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}