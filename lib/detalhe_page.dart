import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget
{
  const DetalhePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalhes do Produto"),centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF5EmOMKXYngYyAbipAejzp-ikfYw4PmDH0g&s')
            ),
            SizedBox(height: 16),
            Text(
              "Esse é um exemplo da aula de hoje bla bla bla bla",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 16),
            Center(child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text("Voltar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}