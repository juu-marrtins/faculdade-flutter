import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CadastroPage extends StatefulWidget{
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => CadastroPageState();
} 

class CadastroPageState extends State<CadastroPage>{
  final formKey = GlobalKey<FormState>();

  String nome = '';
  String email = '';
  String senha = '';

  void _mostrarDados(){
    print("Dados Cadastrados: ");
    print("Nome: $nome");
    print("Email: $email");
    print("Senha: $senha");
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Usuários.")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Nome"),
                onSaved: (value) => nome = value ?? '',
                validator: (value) => 
                  value!.isEmpty ? "Digite seu nome: " : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: "E-mail"),
                onSaved: (value) => email = value ?? '',
                validator: (value) => 
                value!.contains("@") ? null : "Digite um e-mail válido: ",
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(labelText: "Senha"),
                onSaved: (value) => senha = value ?? '',
                validator: (value) => 
                  value!.length < 6 ? "Mínimo de 6 caracteres" : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 20
                  ),
                ),
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    _mostrarDados();
                  }
                },
                child: const Text ("Cadastrar",
                style: TextStyle(fontSize: 18),
                ),
              ),
            ],  
          ),
        ),
      ),
    );
  }
}
