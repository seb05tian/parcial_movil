import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';

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
      appBar: CustomAppBar2(context: context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30.0),
            Center(
              child: Text(
                'Registro de Abogado',
                style: TextStyle(
                  color: Color(0xFF392B54),
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Diploma',
                    style: TextStyle(
                      color: Color(0xFF392B54),
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildDiplomaField(),
                  const SizedBox(height: 30.0),
                  Text(
                    'Descripción',
                    style: TextStyle(
                      color: Color(0xFF392B54),
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
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
