import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';

class pageCadastroFarmacia extends StatefulWidget {
  const pageCadastroFarmacia({Key? key}) : super(key: key);

  @override
  _pageCadastroFarmaciaState createState() => _pageCadastroFarmaciaState();
}

class _pageCadastroFarmaciaState extends State<pageCadastroFarmacia> {
  var maskDate = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
  var maskCPF = new MaskTextInputFormatter(
      mask: '##.###.###/####-##', filter: {"#": RegExp(r'[0-9]')});
  var maskCel = new MaskTextInputFormatter(
      mask: '(##) ####-####', filter: {"#": RegExp(r'[0-9]')});

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
                        padding: EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                ),
                              ),
                              labelText: "Nome"),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Nome não preenchido";
                            else
                              return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                ),
                              ),
                              labelText: "E-mail"),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "E-mail não preenchido";
                            else
                              return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                ),
                              ),
                              labelText: "Senha"),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Senha não preenchida";
                            else
                              return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          inputFormatters: [maskCPF],
                          decoration: InputDecoration(
                            labelText: "CNPJ",
                            hintText: "12.345.678/0001-90",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "CNPJ não preenchido";
                            else {
                              if (CPFValidator.isValid(value))
                                return null;
                              else
                                return "CNPj Invalído";
                            }
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Endereço",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Horário de Funcionamento",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Farmaceutico Responsável",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "CRF do Farmaceutico",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Licensa Sanitaria",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Licensa Funcionamento",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 49, 175, 180),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: TextFormField(
                          inputFormatters: [maskCel],
                          decoration: InputDecoration(
                            labelText: "Telefone",
                            hintText: "(  )      -    ",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 49, 175, 180),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Telefone não preenchido";
                            else
                              return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            _formKey.currentState!.validate();
                          },
                          child: Container(
                            width: 300,
                            height: 50,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Cadastrar-se",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Icon(Icons.article_outlined)
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 49, 175, 180),
                              shadowColor: Colors.transparent),
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