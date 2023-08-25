import 'package:flutter/material.dart';

class Calorias extends StatefulWidget {
  @override
  _CaloriasState createState() => _CaloriasState();
}

class _CaloriasState extends State<Calorias> {
  TextEditingController _desayunoController = TextEditingController();
  TextEditingController _almuerzoController = TextEditingController();
  TextEditingController _cenaController = TextEditingController();
  bool _isMale = true;
  double _totalCalorias = 0;
  String _resultado = '';

  void _calcularTotalCalorias() {
    double desayuno = double.tryParse(_desayunoController.text) ?? 0;
    double almuerzo = double.tryParse(_almuerzoController.text) ?? 0;
    double cena = double.tryParse(_cenaController.text) ?? 0;

    setState(() {
      _totalCalorias = desayuno + almuerzo + cena;

      if (_isMale) {
        if (_totalCalorias < 1600) {
          _resultado = 'Déficit calórico';
        } else if (_totalCalorias >= 1600 && _totalCalorias <= 2000) {
          _resultado = 'Consumo normal';
        } else {
          _resultado = 'Consumo Excesivo de calorías';
        }
      } else {
        if (_totalCalorias < 1600) {
          _resultado = 'Déficit calórico';
        } else if (_totalCalorias >= 1600 && _totalCalorias <= 2000) {
          _resultado = 'Consumo normal';
        } else {
          _resultado = 'Consumo Excesivo de calorías';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorías'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _desayunoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Desayuno (calorías)'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _almuerzoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Almuerzo (calorías)'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _cenaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Cena (calorías)'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Género:'),
                Radio(
                  value: true,
                  groupValue: _isMale,
                  onChanged: (value) {
                    setState(() {
                      _isMale = value!;
                    });
                  },
                ),
                Text('Hombre'),
                Radio(
                  value: false,
                  groupValue: _isMale,
                  onChanged: (value) {
                    setState(() {
                      _isMale = value!;
                    });
                  },
                ),
                Text('Mujer'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _calcularTotalCalorias();
              },
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Text(
              _totalCalorias > 0
                  ? 'Total de calorías: $_totalCalorias\nResultado: $_resultado'
                  : 'Ingrese calorías para calcular',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _desayunoController.dispose();
    _almuerzoController.dispose();
    _cenaController.dispose();
    super.dispose();
  }
}
