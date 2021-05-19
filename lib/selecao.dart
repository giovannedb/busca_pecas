import 'package:app_teste/fim.dart';
import 'package:app_teste/frete.dart';
import 'package:flutter/material.dart';

class selecao extends StatefulWidget {
  @override
  _selecaoState createState() => _selecaoState();
}

class _selecaoState extends State<selecao> {

  int _pecas = 0;

void _changePecas (int delta){
  setState(() {
    _pecas += delta;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                  "images/embreagem.png"
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: FlatButton(
                    child: Text("-1",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    onPressed: (){
                      _changePecas(-1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: FlatButton(
                    child: Text("+1",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    onPressed: (){
                      _changePecas(1);
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text("Numero de peças: $_pecas",
                  style: TextStyle(color: Colors.black,
                      fontSize: 20.0
                  ),
                ),
              ],
            ),
            Container(
              height: 50.0,
              child:  RaisedButton(
                //Botão
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => frete() ));
                },
                child: Text("Comprar",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),),
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
