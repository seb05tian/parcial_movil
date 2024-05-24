import 'notificaciones.dart';

class User {
  final String nombre;
  final String correo;
  final String contrasena;
  final String imagen;
  final List<Notificaciones> notificaciones;

  User({
    required this.nombre,
    required this.correo,
    required this.contrasena,
    this.imagen = "",
    required this.notificaciones,
  });

  factory User.fromjson(Map<String, dynamic> json) {
    var notificacionesList = json['tareas'] as List;
    List<Notificaciones> notificaciones = notificacionesList
        .map((item) => Notificaciones.fromjson(item))
        .toList();
    return User(
      nombre: json['nombre'],
      correo: json['correo'],
      contrasena: json['contrasena'],
      imagen: json['imagen'],
      notificaciones: notificaciones,
    );
  }
}
