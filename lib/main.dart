
import 'package:flutter/material.dart';

void main() => runApp(AppPChop());

class AppPChop extends StatelessWidget {
  const AppPChop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosProductos(),

    );
  }
}// fin clase AppPChop

class LosProductos extends StatelessWidget {
  const LosProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
  // Título con estilo de texto en negro
  title: const Text(
    'Tienda de electronicos PChop',
    style: TextStyle(color: Colors.black),
  ),
  // Color de fondo morado claro
  centerTitle: true,
  backgroundColor: const Color.fromARGB(255, 214, 142, 226), 
  // Icono de computadora a la izquierda (leading)
  leading: const Icon(
    Icons.computer,
    color: Colors.black,
  ),
  // Lista de acciones a la derecha
  actions: [
    IconButton(
      icon: const Icon(Icons.phone, color: Colors.black),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.shopping_cart, color: Colors.black),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.memory, color: Colors.black), // Icono de chip
      onPressed: () {},
    ),
  ],
),
body: ListView(
  padding: const EdgeInsets.all(16.0),
  children: [
    // Tarjeta 1 - Laptop
    _crearTarjeta(
      'Laptop Gamer Pro', 
      'Procesador de última generación', 
      'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto1.png'
    ),
    // Tarjeta 2 - Smartphone
    _crearTarjeta(
      'Laptop lenovo ', 
      'Grafica integrada', 
      'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto2.png'
    ),
    // Tarjeta 3 - Audífonos
    _crearTarjeta(
      'Laptop de oficina', 
      'Batería de 40 horas', 
      'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto3.png'
    ),
    // Tarjeta 4 - Monitor
    _crearTarjeta(
      'Monitor 4K Curvo', 
      '144Hz para gaming fluido', 
      'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto4.png'
    ),
  ],
),

    );// fin de scaffold
  }
}// fin clase LosProductos

// Esta función va fuera del build, pero dentro de tu clase
Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
  return Card(
    color: Colors.blue[50], // Azul claro
    elevation: 5,           // Sombreado
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      // Imagen desde la red configurada mediante el parámetro urlImagen
      leading: CircleAvatar(
        backgroundImage: NetworkImage(urlImagen),
      ),
      title: Text(
        titulo, 
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
      ),
      subtitle: Text(
        subtitulo, 
        style: const TextStyle(color: Colors.black54)
      ),
      trailing: const Icon(
        Icons.favorite_border, 
        color: Colors.black
      ),
    ),
  );
}