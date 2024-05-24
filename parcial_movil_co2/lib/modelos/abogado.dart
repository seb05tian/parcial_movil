class Abogado {
  late final int id;
  final String nombre;
  final String descripcion;
  final int puntuacion;
  final String imagen;

  Abogado({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.puntuacion,
    this.imagen = "",
  });

  factory Abogado.fromJson(Map<String, dynamic> json) {
    return Abogado(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      puntuacion: json['puntuacion'],
      imagen: json['imagen'] ?? "",
    );
  }
}
