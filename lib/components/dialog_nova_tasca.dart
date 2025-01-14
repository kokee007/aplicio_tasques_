import 'package:aplicio_tasques_/components/boto_dialog.dart';
import 'package:flutter/material.dart';

class DialogNovaTasca extends StatelessWidget {
  const DialogNovaTasca({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 200,
        child: Column(
          children: [
            TextField(),

            Row(children: [
              BotoDialog(accioBoto: (){}, textBoto: "Guardar"),//Boto guardar.
              BotoDialog(accioBoto: (){}, textBoto: "Cancelar"),//Boto cancelar.
            ],)
          ],
        ),
      ),
    );
  }
}