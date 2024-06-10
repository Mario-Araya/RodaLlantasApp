import '/admin/components_admin/footer/footer_widget.dart';
import '/admin/components_admin/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_category_widget.dart' show NewCategoryWidget;
import 'package:flutter/material.dart';

class NewCategoryModel extends FlutterFlowModel<NewCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
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

  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    txtNameTextControllerValidator = _txtNameTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    footerModel.dispose();
  }
}
