import '/admin/components_admin/footer/footer_widget.dart';
import '/admin/components_admin/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_my_profile_widget.dart' show EditMyProfileWidget;
import 'package:flutter/material.dart';

class EditMyProfileModel extends FlutterFlowModel<EditMyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txName widget.
  FocusNode? txNameFocusNode;
  TextEditingController? txNameTextController;
  String? Function(BuildContext, String?)? txNameTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for dpdGender widget.
  String? dpdGenderValue;
  FormFieldController<String>? dpdGenderValueController;
  // State field(s) for txtPhone widget.
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneTextController;
  String? Function(BuildContext, String?)? txtPhoneTextControllerValidator;
  // State field(s) for txtAboutMe widget.
  FocusNode? txtAboutMeFocusNode;
  TextEditingController? txtAboutMeTextController;
  String? Function(BuildContext, String?)? txtAboutMeTextControllerValidator;
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
    txNameFocusNode?.dispose();
    txNameTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneTextController?.dispose();

    txtAboutMeFocusNode?.dispose();
    txtAboutMeTextController?.dispose();

    footerModel.dispose();
  }
}
