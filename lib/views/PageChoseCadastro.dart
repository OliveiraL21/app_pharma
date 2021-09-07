import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:pharma_app/views/PageCadastroFarmacia.dart';

import 'PageCadastro.dart';

class pageChooseCadastro extends StatefulWidget {
  const pageChooseCadastro({Key? key}) : super(key: key);

  @override
  _pageChooseCadastroState createState() => _pageChooseCadastroState();
}

class _pageChooseCadastroState extends State<pageChooseCadastro> {

  String? _opcao = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 175, 180),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 49, 175, 180),
                                Color.fromARGB(255, 67, 241, 247)
                              ]),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Text(
                          "P",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textScaleFactor: 6,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Bem-vindo ao PharmApp",
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 175, 180),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                        child: Text("Como Deseja se Cadastrar",
                            style: TextStyle(
                              color: Color.fromARGB(255, 49, 175, 180),
                              fontWeight: FontWeight.normal,
                              fontSize: 20
                            ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RadioListTile(
                                title: Text("Farmácia"),
                                subtitle: Text("Escolha uma opção"),
                                value: "Farmacia",
                                groupValue: _opcao,
                                onChanged: (String? valor){
                                  setState((){
                                    _opcao = valor;
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Usuário"),
                                subtitle: Text("Escolha uma opção"),
                                value: "Usuario",
                                groupValue: _opcao,
                                onChanged: (String? valor){
                                  setState((){
                                    _opcao = valor;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 50,
                          width: 300,
                          child: OutlinedButton(
                            onPressed: () {
                              if(_opcao == "Farmacia"){

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => pageCadastroFarmacia()),
                                );
                              }
                              else{

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => pageCadastro()),
                                );
                              }
                            },
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  width: 1.0,
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cadastrar',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 49, 175, 180),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Icon(
                                  Icons.article_outlined,
                                  color: Color.fromARGB(255, 49, 175, 180),
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 300,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Voltar",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Icon(Icons.arrow_back)
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 49, 175, 180),
                            shadowColor: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}