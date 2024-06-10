import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/user/components_user/header_user/header_user_widget.dart';
import '/user/footer_user/footer_user_widget.dart';
import 'new_quote_widget.dart' show NewQuoteWidget;
import 'package:flutter/material.dart';

class NewQuoteModel extends FlutterFlowModel<NewQuoteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderUser component.
  late HeaderUserModel headerUserModel;
  // State field(s) for txtModelo widget.
  FocusNode? txtModeloFocusNode;
  TextEditingController? txtModeloTextController;
  String? Function(BuildContext, String?)? txtModeloTextControllerValidator;
  // State field(s) for txtPlaca widget.
  FocusNode? txtPlacaFocusNode;
  TextEditingController? txtPlacaTextController;
  String? Function(BuildContext, String?)? txtPlacaTextControllerValidator;
  // State field(s) for txtMarca widget.
  FocusNode? txtMarcaFocusNode;
  TextEditingController? txtMarcaTextController;
  String? Function(BuildContext, String?)? txtMarcaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Model for FooterUser component.
  late FooterUserModel footerUserModel;

  @override
  void initState(BuildContext context) {
    headerUserModel = createModel(context, () => HeaderUserModel());
    footerUserModel = createModel(context, () => FooterUserModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerUserModel.dispose();
    txtModeloFocusNode?.dispose();
    txtModeloTextController?.dispose();

    txtPlacaFocusNode?.dispose();
    txtPlacaTextController?.dispose();

    txtMarcaFocusNode?.dispose();
    txtMarcaTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();

    footerUserModel.dispose();
  }
}
