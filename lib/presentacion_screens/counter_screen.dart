import 'package:flutter/material.dart';

//clase que extiende de StatelessWidget
class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

  //* clase dinamica para widgets dinamicos, hereda de la manera state, que a excepcion de los const, todos son stateful widget
  class _CounterScreenState extends State<CounterScreen> {
    int clickCounter = 0;
    int decrementCounter = 0;
  //metodo BUILD que define la interfaz del ususario(layout)
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    //* propiedad del widget Scaffold, que a su vez es un widget por si mismo
    //* Center es el body de nuestra pantalla Scaffold
    //! "propiedad" : "Widget": propiedad del widget nuevo
    //AppBar = similar a un encabezado 
    appBar: AppBar(
      title: const Text('Counter Screen')
      ),
    body: Center(
      //Center tiene solo 1 hijo
      child: Column(
        //columna tiene varios hijos y los centra y organiza de forma vertical:
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$clickCounter', style: const TextStyle(fontSize: 169, fontWeight: FontWeight.w100),
          ),
          //Text('Decrements: $decrementCounter'),
          Text('Click${clickCounter == 1 ? '':'s'}', style: const TextStyle(fontSize: 20),) // New line
        ],
      ),
      ),
      //boton con la accion "sumar"
    floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    FloatingActionButton(
      onPressed: () {
        setState(() {
          --clickCounter;
        });
      },
      child: const Icon(Icons.exposure_minus_1),
    ),
    const SizedBox(height: 8),
    FloatingActionButton(
      onPressed: () {
        setState(() {
          ++clickCounter;
        });
      },
      child: const Icon(Icons.plus_one),
    ),
    ],
    ),
   ); 
  }
}