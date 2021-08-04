import 'package:flutter/material.dart';
import 'package:manejadoresdeestados/services/usuario_services.dart';

class OnePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

       appBar: AppBar(
         title: Text("pagina 1"),
       ),


       body: usuarioService.existeUsuario
        ? InformacionUsuario()
        : Center(
          child: Text("no hay informacion del usuario")
        ),

       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.next_plan_outlined),
         onPressed:()=> Navigator.pushNamed(context, 'twoPage'),
       ),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("general", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile(title: Text('nombre'),),
          ListTile(title: Text('edad'),),

          Text("profesiones", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile(title: Text('profesion 1'),),
          ListTile(title: Text('profesion 2'),),
          ListTile(title: Text('profesion 3'),),
          
        ],
      ),
    );
  }
}
