import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/Services/shared_prefs.dart';
import 'package:parcial_movil_co2/main.dart';
import 'package:parcial_movil_co2/modelos/abogado.dart';
import 'package:parcial_movil_co2/modelos/notificaciones.dart';
import 'package:parcial_movil_co2/modelos/personaN.dart';
import 'package:parcial_movil_co2/modelos/usuario.dart';
import 'package:parcial_movil_co2/screens/HomePage.dart';

class login extends StatefulWidget {
  static const String routename = "login";

  @override
  State<login> createState() => _loginState();
}

late PersonaN user;

class _loginState extends State<login> {
  final prefs = UserPrefs();
  String email = '';
  String password = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      session();
    });
  }

  Future<void> session() async {
    for (int i = 0; i < usersList.length; i++) {
      if (usersList[i]['correo'] == prefs.email &&
          usersList[i]['contraseña'] == prefs.password) {
        
        List<Abogado> abogados = [];
        for (var abogadoData in usersList[i]['mis_abogados']) {
          Abogado abogado = Abogado.fromJson(abogadoData);
          abogados.add(abogado);
        }

        user = PersonaN(
          imagen: usersList[i]['imagen'],
          abogados: abogados, 
          notificaciones: <Notificaciones>[],
          id: usersList[i]['id'],
          nombre: usersList[i]['nombre'],
          correo: usersList[i]['correo'],
          contrasena: usersList[i]['contraseña'],
          rol: usersList[i]['roll'],
        );

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute<void>(builder: (BuildContext context) {
            return Homepage();
          }),
          (Route<dynamic> route) => false,
        );

        break;
      } else {
        print('no hay sesion activa');
      }
    }
  }

  Future<void> login() async {
    email = emailController.text;
    password = passwordController.text;

    for (int i = 0; i < usersList.length; i++) {
      if (usersList[i]['correo'] == email &&
          usersList[i]['contraseña'] == password) {
        
        List<Abogado> abogados = [];
        for (var abogadoData in usersList[i]['mis_abogados']) {
          Abogado abogado = Abogado.fromJson(abogadoData);
          abogados.add(abogado);
        }

        user = PersonaN(
          imagen: usersList[i]['imagen'],
          abogados: abogados, 
          notificaciones: <Notificaciones>[],
          id: usersList[i]['id'],
          nombre: usersList[i]['nombre'],
          correo: usersList[i]['correo'],
          contrasena: usersList[i]['contraseña'],
          rol: usersList[i]['roll'],
        );

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute<void>(builder: (BuildContext context) {
            return Homepage();
          }),
          (Route<dynamic> route) => false,
        );

        print('encontrado');
        prefs.email = email;
        prefs.password = password;
        prefs.username = usersList[i]['nombre'];
        prefs.image = usersList[i]['imagen'];
        print(user);
        break;
      } else {
        print('no encontrado');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
        
          Container(
            height: size.height * 0.001,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE6E6E6), Color(0xFFB6B6B6)],
              ),
            ),
          ),

          Container(
            height: size.height * 0.3,
            decoration: const BoxDecoration(
              color: Color(0xFF392B54),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/img/ya.png',
                height: size.height * 0.35,
                width: size.width * 0.7,
              ),
            ),
          ),

          
          Center(
            child: Text(
              'TransitoNet',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.05,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.075, size.height * 0.02, size.width * 0.05, 0.0),
            child: Text(
              'Nombre de usuario',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: size.height * 0.02,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(size.height * 0.03),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Nombre de usuario',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          
          Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.075, size.height * 0.02, size.width * 0.05, 0.0),
            child: Text(
              'Contraseña',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: size.height * 0.02,
              ),
            ),
          ),

        
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              decoration: BoxDecoration(
                                color: Colors.white,
                borderRadius: BorderRadius.circular(size.height * 0.03),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          
          Padding(
            padding: EdgeInsets.all(size.width * 0.05),
            child: Container(
              height: size.height * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF392B54),
                borderRadius: BorderRadius.circular(size.height * 0.03),
              ),
              child: TextButton(
                onPressed: () {
                  login();
                },
                child: Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.height * 0.025,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
