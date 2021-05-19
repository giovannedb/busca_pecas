import 'package:app_teste/fim.dart';
import 'package:flutter/material.dart';

class frete extends StatefulWidget {
  @override
  _freteState createState() => _freteState();
}

class _freteState extends State<frete> {

  int _selectRadio;
  int _selectRadioTile;
  int _valor;

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
              child: Image.asset("images/frete.png"),
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
                  title: Text("Curítiba"),
                  subtitle: Text("Valor peça:400,00 + Frete:30,00 - 8 dias úteis "),
                  onChanged: (val){
                    print("Radio tile pressed $val");
                    setSelectedRadioTile(val);
                  },
                  selected: false,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Valor total: 430,00",
                      style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize:  12.0,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 5.0,
                  color: Colors.blue,
                ),
                RadioListTile(
                  value: 2,
                  groupValue: _selectRadioTile,
                  title: Text("Campinas"),
                  subtitle: Text("Valor peça:470,00 + Frete:15,00 - 3 dias úteis"),
                  onChanged: (val){
                    print("Radio tile pressed $val");
                    setSelectedRadioTile(val);
                  },
                  selected: false,
                ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Valor total: 485,00",
              style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize:  12.0,
              ),
            ),
  ],
      ),
                Divider(
                  height: 5.0,
                  color: Colors.blue,
                ),
                RadioListTile(
                  value: 3,
                  groupValue: _selectRadioTile,
                  title: Text("São Paulo"),
                  subtitle: Text("Valor peça:450,00 + Frete:22,00 - 5 dias úteis"),
                  onChanged: (val){
                    print("Radio tile pressed $val");
                    setSelectedRadioTile(val);
                  },
                  selected: false,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Valor total: 472,00",
                      style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize:  12.0,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 5.0,
                  color: Colors.blue,
                ),
                RadioListTile(
                  value: 4,
                  groupValue: _selectRadioTile,
                  title: Text("Rio de Janeiro"),
                  subtitle: Text("Valor peça:500,00 + Frete:30,00 - 7 dias úteis"),
                  onChanged: (val){
                    print("Radio tile pressed $val");
                    setSelectedRadioTile(val);
                  },
                  selected: false,
                ),
              ],
            ),
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Valor total: 530,00",
                  style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize:  12.0,
                  ),
                ),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.blue,
            ),
            Container(
              height: 40.0,
              child:  RaisedButton(
                //Botão
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => fim() ));
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
