import 'package:app_teste/Home.dart';
import 'package:app_teste/cadastro.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Titulo barra
        appBar: AppBar(
          title: Text(
            "Cadastro",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          actions: <Widget>[
            //colocar botão cadastrar
            RaisedButton(onPressed: (){
              Navigator.pop(context);
            },
              child: Text("Voltar",
                style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Form(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              Icon(
                //Icon contato
                Icons.person_outline,
                size: 120.0,
                color: Colors.lightBlueAccent,
              ),
              TextFormField(
                // escrita da barra de texto
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "E-mail",
                    labelStyle: TextStyle(color: Colors.black12)
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                // escrita da barra de texto
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Nome usuário",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                // escrita da barra de texto
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Senha",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              Container(
                height: 50.0,
                child:  RaisedButton(
                  //Botão
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home() ));
                  },
                  child: Text("Cadastrar",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  color: Colors.lightBlueAccent,
                ),
              ),
              Text(" ",
                // Futura mensagem de erro
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 25.0),
              )
            ],
          ),
        )
    );
  }
}
