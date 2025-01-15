import 'package:aplicio_tasques_/components/dialog_nova_tasca.dart';
import 'package:aplicio_tasques_/components/item_tasca.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({
    super.key,
  });

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List tasquesLLista = [
    {
      "titol": "Tasca 1",
      "valor": false,
    },
    {
      "titol": "Tasca 2",
      "valor": false,
    },
    {
      "titol": "Tasca 3",
      "valor": false,
    },
  ];

  TextEditingController tecTexTasca = TextEditingController();

  void accioGuardar() {
    setState(() {
      tasquesLLista.add({
        "titol": tecTexTasca.text,
        "valor": false,
      });
    });
    accioCancelar();
  }

  void accioCancelar() {
    print("Hik");
    Navigator.of(context).pop();
    tecTexTasca.clear();
  }

  void canviaCheckbox(bool valorCheckbox, int posLlista) {
    setState(() {
      tasquesLLista[posLlista]["valor"] = !tasquesLLista[posLlista]["valor"];
    });
  }

  void accioEsborrarTasca(int posLlista) {
    setState(() {
      tasquesLLista.removeAt(posLlista);
    });
  }

  void crearNovaTasca() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogNovaTasca(
          tecTexTasca: tecTexTasca,
          accioGuardar: accioGuardar,
          accioCancelar: accioCancelar,
        );
      },
    );
  }

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
        onPressed: crearNovaTasca,
        child: Icon(
          Icons.add,
          color: Colors.orange[200],
        ),
      ),

      //Body
      body: ListView.builder(
        itemCount: tasquesLLista.length,
        itemBuilder: (context, index) {
          return ItemTasca(
            textTasca: tasquesLLista[index]["titol"], // "Tasca",
            valorCheckbox: tasquesLLista[index]["valor"],
            canviaValorCheckbox: (valor) => canviaCheckbox(
              tasquesLLista[index]["valor"],
              index,
            ),
            esborrarTasca: (valor) => accioEsborrarTasca(index),
          );
        },
      ),
    );
  }
}
