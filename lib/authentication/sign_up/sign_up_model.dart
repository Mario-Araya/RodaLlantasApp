import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  String? _txtNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El Campo es Requerido';
    }

    return null;
  }

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

  // State field(s) for txtConfirmPassword widget.
  FocusNode? txtConfirmPasswordFocusNode;
  TextEditingController? txtConfirmPasswordTextController;
  late bool txtConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmPasswordTextControllerValidator;
  String? _txtConfirmPasswordTextControllerValidator(
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
    txtNameTextControllerValidator = _txtNameTextControllerValidator;
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
    txtConfirmPasswordVisibility = false;
    txtConfirmPasswordTextControllerValidator =
        _txtConfirmPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtConfirmPasswordFocusNode?.dispose();
    txtConfirmPasswordTextController?.dispose();
  }
}
