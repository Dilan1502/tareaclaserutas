import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String _nombre;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2017/05/31/19/03/tarbosaurus-2361317_1280.jpg'),
            ),
            Text(
              'Login',
              style: TextStyle(fontFamily: 'cursiva', fontSize: 30.0),
            ),
           
            SizedBox(
              width: 160.0,
              height: 15.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                hintText: 'USER-NAME',
                labelText: 'user-name',
                suffixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onSubmitted: (valor) {
                _nombre = valor;
                print('El correo es: $_nombre');
              },
            ),
            Divider(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                suffixIcon: Icon(Icons.alternate_email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onSubmitted: (valor) {
                _email = valor;
                print('El correo es: $_email');
              },
            ),
            Divider(
              height: 20.0,
            ),
            TextField(
              enableInteractiveSelection: false,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                suffixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Menu');
                },
                child: Text('Siguiente'),
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
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Regresar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
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
