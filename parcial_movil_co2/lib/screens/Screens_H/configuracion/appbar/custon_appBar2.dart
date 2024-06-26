import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/Services/shared_prefs.dart';
import 'package:parcial_movil_co2/screens/HomePage.dart';
import 'package:parcial_movil_co2/screens/Screens_H/editar_perfil.dart';
import 'package:parcial_movil_co2/screens/login.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context; // Agregamos el parámetro de contexto

  CustomAppBar2({super.key, required this.context});
  final prefs = UserPrefs();
  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.3);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenSizeFont = MediaQuery.of(context).size.height;
    return Container(
      decoration: _boxDecoration(),
      child: SafeArea(
        child: Container(
          height: screenHeight * 0.165,
          width: screenWidth * 0.95,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          Navigator.pushReplacementNamed(
                              context, Homepage.routename);
                        }
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 5),
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
              const SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    user.nombre,
                    style: TextStyle(color: Colors.white, fontSize: 23.0),
                  ),
                  SizedBox(height: 5.0),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
