import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final mySize = TextStyle(fontSize: 25.0);
    
    return Scaffold(
      appBar: AppBar(
        leading: Container(child: Icon(Icons.accessibility_new)),
        title: Text("My Proyecto Flutter Contador"),
        centerTitle: true,
        
      ),

      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Expanded(child: Text("hpña")),
            Text( "Número de Clicks!!!!", style: mySize ),
            
            Text( "0", style: mySize ),

            // Row(
              
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              
            //   children: [
            //   Text("ROW12"),
            //   // Expanded(child: Text("ROW2")),
            //   Text("ROW12"),

            // ],)
        
          ],
        ),
      ),
      
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   // elevation: 10.0,
      //   child: Container(
      //     height: 150.0,
      //     child: Row(
      //       children: [
      //         // Text("")
      //       ],
      //     ),
      //   ),
      // ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            tooltip: 'Add',
            child: Icon(Icons.add),
            onPressed: (){
              print("Hola mundo");
            }
          ),

          FloatingActionButton(
            tooltip: 'Remove',
            child: Icon(Icons.remove),
            onPressed: null),

          FloatingActionButton(
            tooltip: 'Reset',
            child: Icon(Icons.autorenew),
            onPressed: null),
        ],
      ),
      
      
   );
  }
}