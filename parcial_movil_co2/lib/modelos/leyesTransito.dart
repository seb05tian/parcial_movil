class LeyTransito {
  late final int id;
  final String nombre;
  final String descripcion;

  LeyTransito({
    required this.id,
    required this.nombre,
    required this.descripcion,
  });

  factory LeyTransito.fromJson(Map<String, dynamic> json) {
    return LeyTransito(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
    );
  }
}
