import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';

class Register_abogados extends StatefulWidget {
  static const String routename = "Register_abogados";

  @override
  Register_abogadosState createState() => Register_abogadosState();
}

class Register_abogadosState extends State<Register_abogados> {
  File? _diplomaFile;

  @override
  Widget build(BuildContext context) {
    // Obtén el tamaño de la pantalla
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar2(context: context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: size.height * 0.03),
            Center(
              child: Text(
                'Registro de Abogado',
                style: TextStyle(
                  color: Color(0xFF392B54),
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.075,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Diploma',
                    style: TextStyle(
                      color: Color(0xFF392B54),
                      fontSize: size.width * 0.04,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  _buildDiplomaField(size),
                  SizedBox(height: size.height * 0.03),
                  Text(
                    'Descripción',
                    style: TextStyle(
                      color: Color(0xFF392B54),
                      fontSize: size.width * 0.04,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.08),
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
                  
                },
                child: Text(
                  'Finalizar registro',
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiplomaField(Size size) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
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
        SizedBox(width: size.width * 0.02),
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
