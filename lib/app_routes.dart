import 'package:faculdade_flutter/detalhe_page.dart';
import 'package:faculdade_flutter/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes 
{
  static const home = '/';
  static const detalhes = '/detalhes';

  static Map<String, WidgetBuilder> routes =
  {
    home: (context) => HomePage(),
    detalhes: (context) => DetalhePage()
  };
}