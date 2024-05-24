class InfraccionTransito {
  late final String id;
  final String nombre;
  final String descripcion;
  final String inmovilizacion;
  final String pasosLegales;

  InfraccionTransito({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.inmovilizacion,
    required this.pasosLegales,
  });

  factory InfraccionTransito.fromJson(Map<String, dynamic> json) {
    return InfraccionTransito(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      inmovilizacion: json['inmovilizacion'],
      pasosLegales: json['pasosLegales'],
    );
  }
}
