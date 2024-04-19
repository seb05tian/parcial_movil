import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context; // Agregamos el parámetro de contexto

  const CustomAppBar({super.key, required this.context});

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
        child: Container(
          height: screenHeight * 0.3,
          width: screenWidth * 0.95,
          child: Column(
            children: [
              Titulo(),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: screenHeight * 0.01),
              Perfil(),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
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
              const Column(
                children: [
                  Text(
                    'Hola, Sebastian',
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
          padding: EdgeInsets.only(top: 60),
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
