import 'package:app_teste/cartao.dart';
import 'package:app_teste/modelo.dart';
import 'package:flutter/material.dart';


class fim extends StatefulWidget {



  @override
  _fimState createState() => _fimState();
}

// ignore: camel_case_types
class _fimState extends State<fim> {

  int _selectRadio;
  int _selectRadioTile;

  @override
  void initState() {
        super.initState();
        _selectRadio = 0;
        _selectRadioTile = 0;
  }

  setSelectedRadio (int val){
    setState(() {
      _selectRadio = val;
    });
  }
  setSelectedRadioTile (int val){
    setState(() {
      _selectRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Escolha a forma de pagamento",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Form(
        child: ListView(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: Image.asset("images/pagamento.png"),
            ),
            SizedBox(
              height: 1.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RadioListTile(
                    value: 1,
                    groupValue: _selectRadioTile,
                    title: Text("Cartão de crédito"),
                  onChanged: (val){
                      print("Radio tile pressed $val");
                      setSelectedRadioTile(val);
                  },
                  selected: false,
                ),
                RadioListTile(
                  value: 2,
                  groupValue: _selectRadioTile,
                  title: Text("Boleto bancário"),
                  onChanged: (val){
                    print("Radio tile pressed $val");
                    setSelectedRadioTile(val);
                  },
                  selected: false,
                ),
                RadioListTile(
                  value: 3,
                  groupValue: _selectRadioTile,
                  title: Text("Pix"),
                  onChanged: (val){
                    print("Radio tile pressed $val");
                    setSelectedRadioTile(val);
                  },
                  selected: false,
                ),
                Divider(
                  height: 20,
                  color: Colors.blue,
                ),
              ],
            ),
            Container(
              height: 50.0,
              child:  RaisedButton(
                //Botão
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => cartao() ));
                },
                child: Text("Continuar",
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
