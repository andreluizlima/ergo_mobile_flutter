import 'package:flutter/material.dart';

class NovaInspecao extends StatefulWidget {
  @override
  _NovaInspecaoState createState() => _NovaInspecaoState();
}

class _NovaInspecaoState extends State<NovaInspecao> {

  var _formKey = GlobalKey<FormState>();

  TextEditingController _nomeC = TextEditingController();
  TextEditingController _appC = TextEditingController();
  TextEditingController _funcC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Criar inspeção"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text("Preencha os campos abaixo", style: TextStyle(fontSize: 16),),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _nomeC,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style:
                        TextStyle(color: Colors.white, fontSize: 20),
                  validator: (value) {
                      if (value.isEmpty) {
                        return "Preencha o nome da inspeção";
                      }
                      return null;
                    },
                ),
                TextFormField(
                  controller: _appC,
                  decoration: InputDecoration(
                    labelText: "Aplicação/Software",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style:
                        TextStyle(color: Colors.white, fontSize: 20),
                  validator: (value) {
                      if (value.isEmpty) {
                        return "Preencha a aplicação ou software";
                      }
                      return null;
                    },
                ),
                TextFormField(
                  controller: _funcC,
                  decoration: InputDecoration(
                    labelText: "Funcionalidade",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style:
                        TextStyle(color: Colors.white, fontSize: 20),
                  validator: (value) {
                      if (value.isEmpty) {
                        return "Preencha a funcionalidade";
                      }
                      return null;
                    },
                ),
                SizedBox(height: 50,),
                FlatButton(   
                    color: Colors.black38,                 
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.save, size: 30,),
                        SizedBox(width: 15, height: 70),
                        Text("Salvar", style: TextStyle(fontSize: 20),) 
                      ],
                    ),
                  ),
                
              ],
            ),
          ),
        ),
      )
    );
  }
}