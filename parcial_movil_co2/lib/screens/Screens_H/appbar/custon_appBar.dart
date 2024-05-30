import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/Services/shared_prefs.dart';
import 'package:parcial_movil_co2/screens/login.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(230);
  final prefs = UserPrefs();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _boxDecoration(),
      child: const SafeArea(
        child: Column(
          children: [
            Titulo(),
            Divider(),
            SizedBox(height: 5),
            Perfil(),
          ],
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
  const Perfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            // Navegar a otra página cuando se toque el texto
            print('Navigate to another page');
          },
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/img/abogado.png'),
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
  const Titulo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 70),
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
