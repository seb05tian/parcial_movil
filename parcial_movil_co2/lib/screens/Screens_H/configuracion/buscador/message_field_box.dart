import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusnode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'Buscar Leyes',
      filled: true,
      fillColor: Color.fromARGB(255, 255, 255, 255),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      suffixIcon: IconButton(
        onPressed: () {
          print('valor de la caja de texto');
          textController.clear();
        },
        icon: const Icon(Icons.find_replace),
      ),
    );

    return Container(
      width: 340, // Cambia el ancho del contenedor del buscador
      height: 50, // Aumenta la altura del contenedor del buscador
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(7, 7),
            blurRadius: 4,
          ),
        ],
      ),
      child: TextFormField(
        onTapOutside: (event) {
          focusnode.unfocus();
        },
        focusNode: focusnode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          final textValue = textController.value.text;
          print('button: $textValue');
          textController.clear();
          focusnode.requestFocus();
        },
      ),
    );
  }
}
