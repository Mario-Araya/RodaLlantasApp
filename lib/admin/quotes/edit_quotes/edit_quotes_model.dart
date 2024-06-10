import '/admin/components_admin/footer/footer_widget.dart';
import '/admin/components_admin/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_quotes_widget.dart' show EditQuotesWidget;
import 'package:flutter/material.dart';

class EditQuotesModel extends FlutterFlowModel<EditQuotesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
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
  // State field(s) for txtServicio widget.
  FocusNode? txtServicioFocusNode;
  TextEditingController? txtServicioTextController;
  String? Function(BuildContext, String?)? txtServicioTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaTextController;
  String? Function(BuildContext, String?)? txtFechaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    txtModeloFocusNode?.dispose();
    txtModeloTextController?.dispose();

    txtPlacaFocusNode?.dispose();
    txtPlacaTextController?.dispose();

    txtMarcaFocusNode?.dispose();
    txtMarcaTextController?.dispose();

    txtServicioFocusNode?.dispose();
    txtServicioTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaTextController?.dispose();

    footerModel.dispose();
  }
}
