import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parcial_movil_co2/MyApp.dart';
import 'package:parcial_movil_co2/Services/shared_prefs.dart';

List usersList = [];
bool load = false;
Map<String, dynamic> jsonDecoded = {};
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPrefs().initPrefs();
  try {
    String jsonString =
        await rootBundle.loadString('assets/Data/persona_natural.json');
    jsonDecoded = json.decode(jsonString);
    usersList = jsonDecoded['usuarios'];
    load = true;
  } catch (e) {
    print(e);
  }
  runApp(const MyApp());
}
