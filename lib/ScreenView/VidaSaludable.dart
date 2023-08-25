import 'package:flutter/material.dart';
import 'package:flutter_application_2/Components/dropDown.dart';
import 'package:flutter_application_2/ScreenView/Calorias.dart';
import 'package:flutter_application_2/ScreenView/Dietas.dart';
import 'package:flutter_application_2/ScreenView/IMC.dart';


class VidaSaludable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vida Saludable'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownComponent(onOptionSelected: (selectedOption) {
              if (selectedOption == 'Dietas') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dietas()),
                );
              }
              else if (selectedOption=='IMC'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>IMC()),
                );
              }
               else if (selectedOption=='Calorías'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Calorias()),
                );
              }
              }),
          ],
        ),
      ),
    );
  }
}
