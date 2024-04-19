import 'package:flutter/material.dart';

class editar_perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE6E6E6), Color(0xFFB6B6B6)],
              ),
            ),
          ),

          // Contenedor con la imagen "ya.png" en la parte superior
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 180.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF392B54),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Image.asset(
                'assets/img/ya.png',
                height: 280.0,
                width: 400.0,
              ),
            ),
          ),

         
          Positioned(
            top: 155.0,
            left: 0,
            right: 0,
            height: 180.0,
            
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Mi perfil',
                      style: TextStyle(
                        color: Color(0xFF392B54), // Color del texto
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF392B54)), // Bordeado de color
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 45.0,
                        backgroundImage: AssetImage('assets/img/abogado.png'),
                      ),
                    ),
                  ],
                ),
              ),
            
          ),








          Positioned(
            bottom: 440.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Nombre de usuario',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para el nombre de usuario
          Positioned(
            bottom: 380.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nombre de usuario',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 340.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Contraseña',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para la contraseña
          Positioned(
            bottom: 280.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 235.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Confirmar Contraseña',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para la contraseña
          Positioned(
            bottom: 175.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // Botón "Iniciar sesión"
          Positioned(
            bottom: 10.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              height: 50.0,
              width: 10.0,
              decoration: BoxDecoration(
                color: Color(0xFF392B54),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextButton(
                onPressed: () {
                  // Aquí iría la lógica para iniciar sesión
                },
                child: Text(
                  'Guardar cambios',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 140.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Email ',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para el nombre de usuario
          Positioned(
            bottom: 80.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
