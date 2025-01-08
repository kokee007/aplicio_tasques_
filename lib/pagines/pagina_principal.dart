import 'package:aplicio_tasques_/components/item_tasca.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List tasquesLLista = [
    {"títol": "Tasca 1","valor": false,},
    {"títol": "Tasca 2","valor": true,},
    {"títol": "Tasca 3","valor": true,},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],

      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "App Tasques",
        ),
        foregroundColor: Colors.orange[200],
      ),

      //FloatingActionButon
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[300],
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.orange[200],
        ),
      ),

      //Body
      body: ListView.builder(
        itemCount: tasquesLLista.length,
        itemBuilder: (Context, index) {
          return ItemTasca(
            textTasca:tasquesLLista[index]["títol"],// "Tasca",
            valorCheckbox: tasquesLLista[index]["valor"],
          );
        },
      ),
    );
  }
}
