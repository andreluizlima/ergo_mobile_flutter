import 'package:flutter/material.dart';

class InspecaoLista extends StatefulWidget {
  List<String> inspecoes = List();

  @override
  InspecaoListaState createState() => InspecaoListaState();
}

class InspecaoListaState extends State<InspecaoLista> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Lista de Inspeções"),
        ),
        body: ListView.builder(
          itemCount: widget.inspecoes.length,
          itemBuilder: (context, index) {
            return _buildCardInspecao(widget, context, index);
          },
          padding: EdgeInsets.all(15),
        ),
      ),
    );
  }
}

Widget _buildCardInspecao(InspecaoLista widget, BuildContext context, int index) {
    return GestureDetector(
      onLongPress: () {
        _showOptions(context, index);
      },
      onTap: () {
        _showInspectionPage(contact: widget.inspecoes[index]);
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: widget.inspecoes[index].img != null
                            ? FileImage(File(widget.inspecoes[index].img))
                            : AssetImage("images/person.png"),
                            fit: BoxFit.cover)
                            ),
                            
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        contacts[index].name ?? "",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        contacts[index].email ?? "",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        contacts[index].telefone ?? "",
                        style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showInspectionPage(){

  }