import 'package:flutter/material.dart';

class IMC extends StatefulWidget {
  @override
  _IMCState createState() => _IMCState();
}

class _IMCState extends State<IMC> {
  TextEditingController _alturaController = TextEditingController();
  TextEditingController _pesoController = TextEditingController();
  double _imc = 0;

  void _calcularIMC() {
    double altura = double.tryParse(_alturaController.text) ?? 0;
    double peso = double.tryParse(_pesoController.text) ?? 0;

    if (altura > 0 && peso > 0) {
      setState(() {
        _imc = peso / (altura * altura);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Altura (metros)'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _pesoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Peso (kg)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _calcularIMC();
              },
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Text(
              _imc > 0 ? 'IMC: ${_imc.toStringAsFixed(2)}' : 'Ingrese altura y peso',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _alturaController.dispose();
    _pesoController.dispose();
    super.dispose();
  }
}
