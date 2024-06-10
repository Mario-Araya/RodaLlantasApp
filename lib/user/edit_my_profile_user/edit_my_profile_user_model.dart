import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/user/components_user/header_user/header_user_widget.dart';
import '/user/footer_user/footer_user_widget.dart';
import 'edit_my_profile_user_widget.dart' show EditMyProfileUserWidget;
import 'package:flutter/material.dart';

class EditMyProfileUserModel extends FlutterFlowModel<EditMyProfileUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderUser component.
  late HeaderUserModel headerUserModel;
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
    txNameFocusNode?.dispose();
    txNameTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneTextController?.dispose();

    txtAboutMeFocusNode?.dispose();
    txtAboutMeTextController?.dispose();

    footerUserModel.dispose();
  }
}
