import 'package:flutter/material.dart';

class ultima extends StatefulWidget {
  @override
  _ultimaState createState() => _ultimaState();
}

class _ultimaState extends State<ultima> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Concluido",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    "Compra concluida com sucesso",
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  ),
                    textAlign: TextAlign.center,
                ),
              ],
            ),

    ) ;

  }
}
