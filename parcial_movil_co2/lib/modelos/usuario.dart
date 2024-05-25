class Usuario {
  final int id;
  final String nombre;
  final String correo;
  final String contrasena;
  final String rol;

  Usuario({
    required this.id,
    required this.nombre,
    required this.correo,
    required this.contrasena,
    required this.rol,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nombre: json['nombre'],
      correo: json['correo'],
      contrasena: json['contraseña'],
      rol: json['roll'],
    );
  }
}
