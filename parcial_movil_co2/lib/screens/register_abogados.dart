import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';

class Register_abogados extends StatefulWidget {
  static const String routename = "Register_abogados";

  @override
  _Register_abogadosState createState() => _Register_abogadosState();
}

class _Register_abogadosState extends State<Register_abogados> {
  File? _diplomaFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
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
              decoration: const BoxDecoration(
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

          // Texto "TransitoNet" en el color especificado
          const Positioned(
            top: 290.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Registro de abogados',
                style: TextStyle(
                  color: Color(0xFF392B54),
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),

          const Positioned(
            top: 200.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'TransitoNet',
                style: TextStyle(
                  color: Color(0xFF392B54),
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
          ),

          // Texto "Nombre de usuario" arriba del campo de texto
          Positioned(
            bottom: 350.0,
            left: 30.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Diploma',
                  style: TextStyle(
                    color: Color(0xFF392B54),
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                _buildDiplomaField(),
              ],
            ),
          ),

          // Campo de texto para el nombre de usuario

          const Positioned(
            bottom: 290.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Descripcion',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para la contraseña
          Positioned(
            bottom: 225.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // Agrega tus widgets existentes aquí
          // ...
        ],
      ),
    );
  }

  Widget _buildDiplomaField() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              readOnly: true,
              decoration: const InputDecoration(
                hintText: 'Seleccionar archivo',
                border: InputBorder.none,
                suffixIcon: Icon(Icons.attach_file),
              ),
              onTap: _pickDiplomaFile,
            ),
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: _pickDiplomaFile,
          child: const Text('Cargar archivo'),
        ),
      ],
    );
  }

  void _pickDiplomaFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      setState(() {
        _diplomaFile = File(result.files.single.path!);
      });
    }
  }
}
