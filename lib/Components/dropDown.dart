import 'package:flutter/material.dart';

class DropdownComponent extends StatefulWidget {
  final ValueChanged<String> onOptionSelected;
  
  DropdownComponent({required this.onOptionSelected});
  @override
  _DropdownComponentState createState() => _DropdownComponentState();
}

class _DropdownComponentState extends State<DropdownComponent> {
  String selectedItem = 'Dietas';
  List<String> options = ['Dietas', 'IMC', 'Calorías', 'Rutinas de ejercicio', 'Presión arterial', 'Contacto'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      onChanged: (value) {
        setState(() {
          selectedItem = value!;
          widget.onOptionSelected(value);
        });
      },
      items: options.map<DropdownMenuItem<String>>((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
    );
  }
}
