import '/flutter_flow/flutter_flow_util.dart';
import '/user/components_user/header_user/header_user_widget.dart';
import '/user/footer_user/footer_user_widget.dart';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:flutter/material.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderUser component.
  late HeaderUserModel headerUserModel;
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
    footerUserModel.dispose();
  }
}
