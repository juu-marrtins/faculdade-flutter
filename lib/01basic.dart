import 'package:flutter/material.dart';

void main() {
  tipoDeDados();
  estruturasDeControle();
  print(ehPar(2));
  print(helloWrod("julia"));
  listaEMapas();
}

void tipoDeDados()
{
  int idade = 25;
  double altura = 1.75;
  String nome = "matheus";
  bool atvo = true;

  print(' ---  Tipos de Dados --- ');
  print('Idade: $idade');
  print('Altura: $altura');
  print('Nome: $nome');
  print('Status: $atvo');
}

void estruturasDeControle()
{
  int idade = 17;
  print(' --- Estruturas de Controle --- ');
    if(idade >= 18)
    {
      print('Maior de idade.');
    } else 
    {
      print('Menor de idade.');
    }
}

String helloWrod(String nome)
{ 
  return 'Olá, $nome!';
}

bool ehPar(int numero)
{
  return numero % 2 == 0;
}

void listaEMapas()
{
  print(' --- Listas e Mapas --- ');
  List<int> numeros = [1, 2, 3];
  numeros.forEach((numero) => print('Numero é: $numero'));

  Map<String, String> capital =
  {'Brasil': 'Brasilia', 'Franca': 'Paris'};

  capital.forEach((pais, cidade) 
  {
    print ('A capital de $pais é $cidade');
  });
}                                                                                                
