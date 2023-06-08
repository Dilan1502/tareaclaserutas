import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.purple],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, // Establece el fondo del Scaffold como transparente
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2014/09/16/05/23/tyrannosaurus-447801_1280.jpg',
                  ),
                  radius: 100.0, // Aumenta el valor para hacer la imagen más grande
                ),
                SizedBox(height: 50),
                Text(
                  'Bienvenido',
                  style: TextStyle(fontSize: 50),
                ),
                
              ],
            ),
            SizedBox(
              width: 160.0,
              height: 15.0,
              child: Divider(
                color: Colors.blueGrey[600],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Register');
                },
                child: Text('Registrarse'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Login');
                },
                child: Text('Iniciar Sesión'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
