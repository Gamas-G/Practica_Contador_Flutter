import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
    
    final _mySize = TextStyle(fontSize: 25.0);
    int _cont = 0;
  
  @override
  Widget build(BuildContext context) {
    

    
    return Scaffold(
      appBar: AppBar(
        leading: Container(child: Icon(Icons.android)),
        title: Text("My Proyecto Flutter Contador"),
        centerTitle: true,
        
      ),

      body: Center(
        child: Column(        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text( "Número de Clicks!!!!", style: _mySize ),
            
            Text( "$_cont", style: _mySize ),
        
          ],
        ),
      ),
      
      
      floatingActionButton: _crearBotones(),
            
   );
  }

  Widget _crearBotones(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //Personal
        SizedBox(width: 30.0),
        _botones("Reset", Icon(Icons.autorenew), 3),
        Expanded(child: SizedBox()),
        _botones("Remove", Icon(Icons.remove), 2),
        SizedBox(width: 10.0),
        _botones("Add", Icon(Icons.add), 1),
        
        /*Ejemplo del curso
        // FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar ),
        // FloatingActionButton( child: Icon(Icons.remove), onPressed: _sustraer),
        // FloatingActionButton( child: Icon(Icons.autorenew), onPressed: _reset )
        */
      ],
    );
  }
//Metodos del curso
  // void _agregar(){
  //   setState(() => _cont++);
  // }

  // void _sustraer(){
  //   setState(() => _cont--);
  // }

  // void _reset(){
  //   setState(() => _cont = 0);
  // }

//Logica propia
  Widget _botones(String tooltip, Icon icono, int option){
    return FloatingActionButton(
       tooltip: tooltip,
            child: icono,
            onPressed: (){
              redibujar(option);
            }
    );
  }
  void redibujar(int option){
    _option(option);
    setState(() {});
  }

  void _option(int option){
    switch (option) {
      case 1:
         _cont++; 
        break;

      case 2:
        _cont--;
        //Detener el contador hasta 0
        // if(_cont < 0) _cont = 0;
        break;

      case 3:
        _cont = 0;
        break;
      default:
    }
  }
}