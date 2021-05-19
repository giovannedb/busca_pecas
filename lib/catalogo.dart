import 'package:app_teste/selecao.dart';
import 'package:flutter/material.dart';

class catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesquise sua peça",
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
                  "images/jeep2.png"
              ),
            ),
           FlatButton(
               child: Container(
                 color: Colors.black54,
                 child: Align(
                   alignment: Alignment.topLeft,
                   child: Text("101 |Embreagem", style: TextStyle(color: Colors.black,
                       fontSize: 20.0
                   ),
                   ),
                 ),
               ),
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => selecao() ));
             },
           ),
            Container(
              color: Colors.black12,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("102 |Motor e supensão do motor pulsor", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),

            Container(
              color: Colors.black54,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("103 |Câmbio e diferencial ", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
            Container(
              color: Colors.black12,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("104 |Alimentação e escape", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
            Container(
              color: Colors.black54,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("105 |Direção", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
            Container(
              color: Colors.black12,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("106 |Freios", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
            Container(
              color: Colors.black54,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("107 |Partida do motor", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
            Container(
              color: Colors.black12,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("108 |Bancos", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
            Container(
              color: Colors.black54,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("109 |Alternador", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
            Container(
              color: Colors.black12,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("110 |Rodas", style: TextStyle(color: Colors.black,
                    fontSize: 20.0
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
