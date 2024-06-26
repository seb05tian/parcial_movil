class SenalTransito {
  late final int id;
  final String nombre;
  final String descripcion;
  final String imagen;

  SenalTransito({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.imagen,
  });

  factory SenalTransito.fromJson(Map<String, dynamic> json) {
    return SenalTransito(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      imagen: json['imagen'],
    );
  }
}
