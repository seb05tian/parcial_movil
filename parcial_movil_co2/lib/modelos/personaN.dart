import 'package:parcial_movil_co2/modelos/abogado.dart';
import 'package:parcial_movil_co2/modelos/notificaciones.dart';

import 'usuario.dart';

class PersonaN extends Usuario {
  final String imagen;
  final List<Notificaciones> notificaciones;
  final List<Abogado> abogados;

  PersonaN({
    required int id,
    required String nombre,
    required String correo,
    required String contrasena,
    required String rol,
    this.imagen = "",
    required this.notificaciones,
    required this.abogados,
  }) : super(
          id: id,
          nombre: nombre,
          correo: correo,
          contrasena: contrasena,
          rol: rol,
        );

  factory PersonaN.fromJson(Map<String, dynamic> json) {
    var notificacionesList = json['notificaciones'] as List? ?? [];
    var abogadosList = json['mis_abogados'] as List? ?? [];
    List<Notificaciones> notificaciones = notificacionesList
        .map((item) => Notificaciones.fromJson(item))
        .toList();
    List<Abogado> abogados =
        abogadosList.map((item) => Abogado.fromJson(item)).toList();
    return PersonaN(
      id: json['id'],
      nombre: json['nombre'],
      correo: json['correo'],
      contrasena: json['contraseña'],
      rol: json['roll'],
      imagen: json['imagen'] ?? "",
      notificaciones: notificaciones,
      abogados: abogados,
    );
  }
}
