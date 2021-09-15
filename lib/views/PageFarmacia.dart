import 'dart:ui';

import 'package:flutter/material.dart';

class farmaciaProduto extends StatefulWidget {
  const farmaciaProduto({Key? key}) : super(key: key);

  @override
  _farmaciaProdutoState createState() => _farmaciaProdutoState();
}

class _farmaciaProdutoState extends State<farmaciaProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'images/LogotipoVerde.png'
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
              Card(
                child: Row(
                  children: <Widget> [
                    Text(
                      "Insulina Caneta",
                    )
                  ],
                ),
              ),
            ],
          )),

    ));
  }
}
