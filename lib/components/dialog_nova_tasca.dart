import 'package:aplicio_tasques_/components/boto_dialog.dart';
import 'package:flutter/material.dart';

class DialogNovaTasca extends StatelessWidget {
  final TextEditingController tecTexTasca;
  final Function()? accioGuardar;
  final Function()? accioCancelar;

  const DialogNovaTasca({
    super.key,
    required this.tecTexTasca,
    required this.accioCancelar,
    required this.accioGuardar,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              cursorColor: Colors.orange[300],
              decoration: InputDecoration(
                hintText: "Escriu la tasca...",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.teal[100],
              ),
            ),
            // SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotoDialog(
                    accioBoto: accioGuardar, textBoto: "Guardar"), //Boto guardar.
                BotoDialog(
                    accioBoto: accioCancelar, textBoto: "Cancelar"), //Boto cancelar.
              ],
            )
          ],
        ),
      ),
    );
  }
}
