import 'package:flutter/material.dart';

class Dieta {
  final String comida;
  final String descripcion;
  final String imagenUrl;

  Dieta({required this.comida, required this.descripcion, required this.imagenUrl});
}

class Dietas extends StatelessWidget {
  final List<Dieta> dietas = [
    Dieta(
      comida: 'Desayuno',
      descripcion: 'Dieta saludable para el desayuno: Frutas con cereal',
      imagenUrl: 'https://i.blogs.es/c18231/oatmeal/1366_2000.jpg', 
    ),
    Dieta(
      comida: 'Almuerzo',
      descripcion: 'Dieta equilibrada para el almuerzo: granos, con vegetales y proteina',
      imagenUrl: 'https://mandolina.co/wp-content/uploads/2020/11/fajitas-de-pollo-destacada.jpg',  
    ),
    Dieta(
      comida: 'Cena',
      descripcion: 'Dieta ligera para la cena: proteina con vegetales',
      imagenUrl: 'https://i.blogs.es/e40372/hamburgeusasfitpollo/1366_2000.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dietas'),
      ),
      body: ListView.builder(
        itemCount: dietas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dietas[index].comida),
            subtitle: Text(dietas[index].descripcion),
            leading: Image.network(dietas[index].imagenUrl),
          );
        },
      ),
    );
  }
}
