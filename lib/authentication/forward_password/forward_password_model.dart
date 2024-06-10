import '/flutter_flow/flutter_flow_util.dart';
import 'forward_password_widget.dart' show ForwardPasswordWidget;
import 'package:flutter/material.dart';

class ForwardPasswordModel extends FlutterFlowModel<ForwardPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtEmailRecover widget.
  FocusNode? txtEmailRecoverFocusNode;
  TextEditingController? txtEmailRecoverTextController;
  String? Function(BuildContext, String?)?
      txtEmailRecoverTextControllerValidator;
  String? _txtEmailRecoverTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El Campo es Requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Debe ser un Email';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtEmailRecoverTextControllerValidator =
        _txtEmailRecoverTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEmailRecoverFocusNode?.dispose();
    txtEmailRecoverTextController?.dispose();
  }
}
