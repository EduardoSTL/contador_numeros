import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget{
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    //* propiedad del widget Scaffold, que a su vez es un widget por si mismo
    //Center es el body de nuestra pantalla Scaffold
    //! "propiedad" : "Widget": propiedad del widget nuevo
    //AppBar = similar a un encabezado 
    appBar: AppBar(
      title: const Text('Counter Screen')
      ),
    body: Center(
      //Center tiene solo 1 hijo
      child: Column(
        //columna tiene varios hijos:
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('10', style: TextStyle(fontSize: 169, fontWeight: FontWeight.w100),
          ),
          Text('Clicks')
        ],
      ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){

      },
      child: const Icon(Icons.plus_one),
      ),
   ); 
  }
}