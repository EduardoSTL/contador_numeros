import 'package:flutter/material.dart';

//clase que extiende de StatelessWidget
class CounterScreen extends StatelessWidget{
  const CounterScreen({super.key});

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
        children: const [
          Text('10', style: TextStyle(fontSize: 169, fontWeight: FontWeight.w100),
          ),
          Text('Clicks')
        ],
      ),
      ),
      //boton con la accion "sumar"
    floatingActionButton: FloatingActionButton(
      onPressed: (){

      },
      child: const Icon(Icons.plus_one),
      ),
   ); 
  }
}