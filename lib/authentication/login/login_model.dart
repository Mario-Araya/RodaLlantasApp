import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El Campo es Requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Debe ser un Email';
    }
    return null;
  }

  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  String? _txtPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El Campo es Requerido';
    }

    if (val.length < 8) {
      return 'La Contraseña Debe Tener Mínimo 8 Caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();
  }
}
