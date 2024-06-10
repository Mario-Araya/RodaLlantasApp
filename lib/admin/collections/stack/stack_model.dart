import '/admin/components_admin/footer/footer_widget.dart';
import '/admin/components_admin/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stack_widget.dart' show StackWidget;
import 'package:flutter/material.dart';

class StackModel extends FlutterFlowModel<StackWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
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
    footerModel.dispose();
  }
}
