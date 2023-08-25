import 'package:flutter/material.dart';

class InputsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Nombre',
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            labelText: 'Edad',
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Lógica para procesar los datos ingresados en los campos
          },
          child: Text('Guardar'),
        ),
      ],
    );
  }
}
