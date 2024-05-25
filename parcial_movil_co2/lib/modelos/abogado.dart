import 'usuario.dart';
import 'personaN.dart';

class Abogado extends Usuario {
  final String descripcion;
  final int puntuacion;
  final String imagen;
  final List<PersonaN> clientes;

  Abogado({
    required int id,
    required String nombre,
    required String descripcion,
    required int puntuacion,
    this.imagen = "",
    required List<PersonaN> clientes,
  })  : this.descripcion = descripcion,
        this.puntuacion = puntuacion,
        this.clientes = clientes,
        super(
          id: id,
          nombre: nombre,
          correo: '', // Default value since it's not provided in the JSON
          contrasena: '', // Default value since it's not provided in the JSON
          rol: 'abogado', // Default value
        );

  factory Abogado.fromJson(Map<String, dynamic> json) {
    var misClientes = json['mis_clientes'] as List? ?? [];
    List<PersonaN> clientes =
        misClientes.map((item) => PersonaN.fromJson(item)).toList();
    return Abogado(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      puntuacion: json['puntuacion'],
      imagen: json['imagen'] ?? "",
      clientes: clientes,
    );
  }
}
