import 'package:flutter/material.dart';

class BotoDialog extends StatelessWidget {
  final String textBoto;
  final Function()? accioBoto;

  const BotoDialog({
    super.key,
    required this.accioBoto,
    required this.textBoto,
    });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: accioBoto,
      color: Colors.teal[400],
      child: Text(textBoto),
    );
  }
}
