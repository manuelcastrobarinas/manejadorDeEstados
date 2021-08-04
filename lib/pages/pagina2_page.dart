import 'package:flutter/material.dart';
import 'package:manejadoresdeestados/models/usuario.dart';
import 'package:manejadoresdeestados/services/usuario_services.dart';

class TwoPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("pagina 2"),
        ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              MaterialButton(
                child: Text("establecer usuario", style: TextStyle(color:Colors.white)),
                color: Colors.blue,
                onPressed:(){
                }
              ),

              MaterialButton(
                child: Text("cambiar edad", style: TextStyle(color:Colors.white)),
                color: Colors.blue,
                onPressed:(){}
              ),

              MaterialButton(
                child: Text("cambiar profesion", style: TextStyle(color:Colors.white)),
                color: Colors.blue,
                onPressed:(){}
              )

            ],
          ),
        ),
      ),
    );
  }
}