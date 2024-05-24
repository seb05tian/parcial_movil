class Notificaciones {
  late final int id;
  final String nombre;
  final String descripcion;

  Notificaciones({
    required this.id,
    required this.nombre,
    required this.descripcion,
  });

  factory Notificaciones.fromjson(Map<String, dynamic> json) {
    return Notificaciones(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
    );
  }
}
