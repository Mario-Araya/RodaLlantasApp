// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:material_dialogs/material_dialogs.dart';

class MaterialDialogWidget extends StatefulWidget {
  const MaterialDialogWidget({
    Key? key,
    this.width,
    this.height,
    required this.positiveAction,
    required this.negativeAction,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() positiveAction;
  final Future<dynamic> Function() negativeAction;

  @override
  _MaterialDialogWidgetState createState() => _MaterialDialogWidgetState();
}

class _MaterialDialogWidgetState extends State<MaterialDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: () {
          Dialogs.materialDialog(
            msg: '¿Quiere editar su perfil?',
            title: "Importante",
            color: Colors.grey,
            context: context,
            dialogWidth: 0.3,
            onClose: (value) => print("returned value is '$value'"),
            actions: [
              IconButton(
                icon: const Icon(Icons.done),
                onPressed: () {
                  widget.positiveAction();
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  widget.negativeAction();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
        child: Text(
          'Editar Perfil',
          style: TextStyle(
            fontSize: 17, // Ajusta el tamaño de fuente según tus preferencias
            fontWeight: FontWeight.bold, // Ajusta el grosor de la fuente
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: Color.fromARGB(255, 67, 67, 70),
          // Puedes ajustar otros estilos aquí según tus necesidades
        ),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
