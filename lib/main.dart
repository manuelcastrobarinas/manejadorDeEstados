import 'package:flutter/material.dart';
import 'package:manejadoresdeestados/pages/pagina1_page.dart';
import 'package:manejadoresdeestados/pages/pagina2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false, 
      title: 'manejador de estados',
      routes:{
        'onePage':(_) => OnePage(),
        'twoPage':(_) => TwoPage(),
      } ,
      initialRoute: 'onePage',
    );
  }
}
