import 'package:app_teste/final.dart';
import 'package:flutter/material.dart';

class cartao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Titulo barra
        appBar: AppBar(
          title: Text(
            "Preencha seus dados",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        backgroundColor: Colors.white,
        body: Form(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                child: Image.asset("images/pagamento.png"),
              ),
              TextFormField(
                // escrita da barra de texto
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Número do cartão",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                // escrita da barra de senha
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Nome completo",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                // escrita da barra de senha
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Data de vencimento",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                // escrita da barra de senha
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Código de segurança",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                // escrita da barra de senha
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "CPF do titular do cartão",
                    labelStyle: TextStyle(color: Colors.black12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              Container(
                height: 50.0,
                child:  RaisedButton(
                  //Botão
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ultima() ));
                  },
                  child: Text("Finalizar",
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