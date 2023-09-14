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
          Text('$clickCounter', style: TextStyle(fontSize: 169, fontWeight: FontWeight.w100),
          ),
          Text('Clicks'),
          Text('Decrements: $decrementCounter'),
          Text('Click${clickCounter == 1 ? '':'s'}') // New line
        ],
      ),
      ),
      //boton con la accion "sumar"
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        //* cambia el estado del texto del widget al hacer click
        setState(() {
          //! Incremento en uno cada vez que se presione el botón
          ++clickCounter;
        });
      },
      child: const Icon(Icons.plus_one),
      ),
   ); 
  }
}