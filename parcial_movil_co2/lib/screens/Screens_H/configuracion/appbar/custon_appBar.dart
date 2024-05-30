import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/Services/shared_prefs.dart';
import 'package:parcial_movil_co2/screens/Screens_H/editar_perfil.dart';
import 'package:parcial_movil_co2/screens/login.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context; // Agregamos el parámetro de contexto

  CustomAppBar({super.key, required this.context});
  final prefs = UserPrefs();
  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.4);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenSizeFont = MediaQuery.of(context).size.height;
    return Container(
      decoration: _boxDecoration(),
      child: SafeArea(
        child: SizedBox(
          height: screenHeight * 0.25,
          width: screenWidth * 0.95,
          child: Column(
            children: [
              const Titulo(),
              const Divider(),
              SizedBox(height: screenHeight * 0.01),
              const Perfil(),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
      color: Color(0xFF392B54),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Editar_perfil.routename);
          },
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(user.imagen),
                ),
              ),
              const SizedBox(width: 5.0),
              Column(
                children: [
                  Text(
                    'Hola, ${user.nombre}',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '¿Qué quieres hacer hoy?',
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 60),
          child: const Text(
            'TransitoNet',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
          ),
        ),
      ],
    );
  }
}
