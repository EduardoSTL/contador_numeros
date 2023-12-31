import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget{

  const CounterFunctionsScreen({super.key});
  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}
 class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Counter Functions'),
      leading: IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: ()
      {
        setState((){
          clickCounter = 0;
        });
      },),
      ),
    body: Center(
      //Center tiene solo 1 hijo
      child: Column(
        //columna tiene varios hijos y los centra y organiza de forma vertical:
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$clickCounter', style: const TextStyle(fontSize: 169, fontWeight: FontWeight.w100),
          ),
          Text('Click${clickCounter == 1 ? '':'s'}', style: const TextStyle(fontSize: 25)) 
        ],
      ),
      ),
      //boton con la accion "sumar", "restar" y "refresar":
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(onPressed: (){
            clickCounter++;
            //* cambia el estado del texto del widget al hacer click
            setState((){});
          },
          child: const Icon(Icons.plus_one)
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
          onPressed: ()
          {
            clickCounter--;
            setState(() {});
          },
          child: const Icon(Icons.exposure_minus_1)
        ),
        const SizedBox(height: 10),

        FloatingActionButton(onPressed: (){
          clickCounter = 0;
          setState(() {});
        },
        child: const Icon(Icons.refresh_outlined),),
        const SizedBox(height: 10)

        ],),
   );
  } 
  }