import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  var listaDePersonas =  ["Cesar", "mel", "jen", "isaac", "david", "victor"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listados"),
      ),
      body: ListView.builder(
        itemCount: listaDePersonas.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
                color: Colors.lightBlue,
                child: Text(listaDePersonas[index])
            );
          }
      )
    );
  }
}
