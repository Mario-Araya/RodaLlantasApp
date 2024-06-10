import '/admin/components_admin/footer/footer_widget.dart';
import '/admin/components_admin/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_user_widget.dart' show NewUserWidget;
import 'package:flutter/material.dart';

class NewUserModel extends FlutterFlowModel<NewUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El Campo es Requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
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

  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    footerModel.dispose();
  }
}
