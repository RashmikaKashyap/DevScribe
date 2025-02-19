import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for cnfpwd widget.
  FocusNode? cnfpwdFocusNode;
  TextEditingController? cnfpwdTextController;
  late bool cnfpwdVisibility;
  String? Function(BuildContext, String?)? cnfpwdTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    cnfpwdVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    cnfpwdFocusNode?.dispose();
    cnfpwdTextController?.dispose();
  }
}
