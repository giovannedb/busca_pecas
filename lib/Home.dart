import 'package:app_teste/cadastro.dart';
import 'package:app_teste/placa.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Titulo barra
        appBar: AppBar(
          title: Text(
            "Usuário",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          actions: <Widget>[
            //colocar botão cadastrar
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Second() ));
            },
              child: Text("Cadastrar",
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
                //Icone contato
                Icons.person_outline,
                size: 120.0,
                color: Colors.lightBlueAccent,
              ),
              TextFormField(
                // escrita da barra de texto
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Usuário",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0,),
              TextFormField(
                // escrita da barra de senha
                keyboardType: TextInputType.number,
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => placa() ));
                  },
                  child: Text("Entrar",
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
