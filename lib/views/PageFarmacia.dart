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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Text("Teste"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

}

