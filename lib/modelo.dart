import 'package:app_teste/catalogo.dart';
import 'package:flutter/material.dart';

class modelo extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
      "Pesquise seu catálogo",
    style: TextStyle(color: Colors.white),
    ),
      centerTitle: true,
      backgroundColor: Colors.lightBlueAccent,
    ),
    body: Form(
      child: ListView(
      children: [
    Container(
        width: 200,
        height: 200,
        child: Image.asset(
        "images/jeep.png"
      ),
      ),
    SizedBox(height: 10.0,),
    TextFormField(
// escrita da barra de texto
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
      hintText: "Insira o chassi",
       labelStyle: TextStyle(color: Colors.black12)),
            textAlign: TextAlign.center,
      ),
      SizedBox(height: 10.0,),
      Container(
          height: 50.0,
          child:  RaisedButton(
//Botão
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => catalogo() ));
          },
        child: Text("Pesquisar",
        style: TextStyle(color: Colors.white, fontSize: 25.0),),
        color: Colors.lightBlueAccent,
      ),
    ),
    ],
      ),
    ),
    ) ;
    }
    }
