import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String _nombre;
  late String _email;
  late String _password;
  String _selectedGender = '';

  get flatButtonStyle => null;
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
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/06/11/22/44/prehistory-2393803_1280.jpg'),
            ),
            Column(
              children: <Widget>[
                Text(
                  'REGISTRATE!!!',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600],
                )),
            TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                  hintText: 'Name',
                  labelText: 'name',
                  suffixIcon: Icon(Icons.verified_user),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            Divider(
              height: 20.0,
            ),
            SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600],
                )),
            TextField(
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'USER-NAME',
                    labelText: 'user-name',
                    suffixIcon: Icon(Icons.verified_user_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print('El correo es: $_nombre');
                }),
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
                    )),
                onSubmitted: (valor) {
                  _email = valor;
                  print('El correo es: $_email');
                }),
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
                  Navigator.pushNamed(context, '/Login');
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
