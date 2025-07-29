void main()
{
  createVariable();
}

void createVariable()
{
  print("--- Criando variaveis ---");
  String name = "Julia";
  int age = 19;
  double high = 1.57;
  bool flutterStudent = true;

  controllStruct(age);
  print(introduceStudent(name, age, flutterStudent));
  listAndMap();
}

void controllStruct(int age)
{

  print("--- É maior de idade? ---");
  if(age >= 18)
  {
    print("O aluno é maior de idade.");
  } else 
  {
    print("O aluno é menor de idade.");
  }
}

String introduceStudent(String name, int age, bool flutterStudent)
{
  print("--- Apresentacao ---");
  return "Olá, meu nome é $name, tenho $age anos e estou apredendo Flutter: $flutterStudent";
}

void listAndMap()
{
  print("--- List e Maps ---");
  List<String> languages = ["PHP", "Java", "Python"];
  languages.forEach((language) => print("Linguagem: $language"));

  Map<String, int> graduation = {"Prog. Disp. Moveis": 4, "Redes": 30, "POO":40};

  graduation.forEach((subject, hours)
  {
    print("Disciplna: $subject | Horas: $hours");
  });

}
