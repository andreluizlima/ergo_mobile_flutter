import 'package:ergo_mobile/view/home.view.dart';
import 'package:ergo_mobile/view/inspecoes.view.dart';
import 'package:ergo_mobile/view/nova_inspecao.view.dart';
import 'package:flutter/material.dart';


void main() { 
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InspecaoLista(),
    theme: ThemeData.dark(),
  ));
}