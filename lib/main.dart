import 'package:app_teste/cartao.dart';
import 'package:app_teste/fim.dart';
import 'package:app_teste/final.dart';
import 'package:app_teste/selecao.dart';

import 'Home.dart';
import 'package:flutter/material.dart';
import 'placa.dart';
import 'modelo.dart';
import 'catalogo.dart';
import 'selecao.dart';
import 'fim.dart';
import 'frete.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
