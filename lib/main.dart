import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return const Scaffold(
    //* propiedad del widget Scaffold, que a su vez es un widget por si mismo
    //Center es el body de nuestra pantalla Scaffold
    body: Center(
      //Center tiene solo 1 hijo
      child: Column(
        //columna tiene varios hijos:
        children: [
          Text('10'),
          Text('Clicks')
        ],
      ),
      ),
   ); 
  }
}