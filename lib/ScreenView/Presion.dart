import 'package:flutter/material.dart';
import 'package:flutter_application_2/Components/inputs.dart';

class Presion extends StatefulWidget {
  const Presion({Key? key}) : super(key: key);

  @override
  State<Presion> createState() => _PresionState();
}

class _PresionState extends State<Presion> {
  TextEditingController presionController = TextEditingController();
  double resultado = 0;
  String presionR = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de Presión Arterial"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  InputsComponent(
                    label: "Presión Arterial",
                    controller: presionController,
                    validator: (value) =>
                        value!.isEmpty ? "Ingrese su presión arterial" : null,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resultado = double.tryParse(presionController.text) ?? 0;
                     });
                      if (resultado < 120){
                        presionR = "Presión es Normal";
                      }else if(resultado >= 120 && resultado <= 129){
                        presionR = "Presión arterial es alta (sin otros factores de riesgo cardíaco)";
                      }else if(resultado >= 130 && resultado <= 179){
                        presionR = "Presión arterial es alta (con otros factores de riesgo cardíaco, según algunos proveedores)";
                      }else{
                        presionR = "Presión arterial es peligrosamente alta - Busque atención médica de inmediato";
                      }
                    },
                    child: const Text('Calcular Presión Arterial'),
                  ),
                  const SizedBox(height: 10),
                  Text("El resultado de la presión es: $resultado, por lo tanto su $presionR"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
