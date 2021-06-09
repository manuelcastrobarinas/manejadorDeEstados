import 'package:estados/models/usuario.dart';
import 'package:estados/services/Usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario 
        ? Text('nombre:${usuarioService.usuario.nombre}')
        : Text("no hay usuario"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                
                final nuevoUsuario =  Usuario(
                  nombre: "manuel leonardo castro barinas",
                  edad: 23,
                  profesiones: [
                    'ingeniero de sistemas',
                    'el man mas maquina',
                    'el paspi'
                  ]);
                usuarioService.usuario = nuevoUsuario;
              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                final usuarioService = Provider.of<UsuarioService>(context, listen: false);
                usuarioService.setEdad(21);
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioService.addProfesion();
              }
            ),

          ],
        )
     ),
   );
  }
}