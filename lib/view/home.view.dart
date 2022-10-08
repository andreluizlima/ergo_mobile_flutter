import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[ 
            Text("ergo.mobile", style: TextStyle(fontSize: 42,)),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.black38,   
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add, size: 30,),
                      SizedBox(width: 15, height: 70),
                      Text("Nova Inspeção", style: TextStyle(fontSize: 20),)
                    ],
                  ),
                ),                
                SizedBox(height: 12,),
                FlatButton(   
                  color: Colors.black38,                 
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.folder_open, size: 30,),
                      SizedBox(width: 15, height: 70),
                      Text("Abrir Inspeção", style: TextStyle(fontSize: 20),) 
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                FlatButton(
                  color: Colors.black38,   
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.help, size: 30,),
                      SizedBox(width: 15, height: 70),
                      Text("Ajuda", style: TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: <Widget>[
                          Image.asset("assets/images/br.png", scale: 15,),
                          SizedBox(width: 10,),
                          Text("pt-br")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: <Widget>[
                          Image.asset("assets/images/us.png", scale: 15,),
                          SizedBox(width: 10,),
                          Text("en-us")
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}