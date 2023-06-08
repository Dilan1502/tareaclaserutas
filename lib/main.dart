import 'package:flutter/material.dart';
import 'package:tarea/pages/404_page.dart';
import 'package:tarea/pages/inicio_page.dart';
import 'package:tarea/pages/login_page.dart';
import 'package:tarea/pages/menu_page.dart';
import 'package:tarea/pages/register.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/': (context)=> InicioPage(),
    '/Register': (context)=> RegisterPage(),
    '/Login': (context)=> Login(),
    '/Menu':(context)=> MenuPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => OtraPage(),);
      },
     // home: HomePage(),
    );
  }
}