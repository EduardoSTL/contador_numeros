import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget{
  const CounterScreen({super.key});

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