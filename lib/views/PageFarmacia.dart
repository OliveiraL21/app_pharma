import 'package:flutter/material.dart';

class farmaciaProduto extends StatefulWidget{
  const farmaciaProduto({Key? key}) : super(key: key);

  @override
  _farmaciaProdutoState createState() => _farmaciaProdutoState();
}

class _farmaciaProdutoState extends State<farmaciaProduto>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              child: Text("Teste"),
            ),
          ],
        ),
      ),
    );
  }

}

