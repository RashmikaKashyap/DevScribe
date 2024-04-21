import '/flutter_flow/flutter_flow_util.dart';
import 'private_page_widget.dart' show PrivatePageWidget;
import 'package:flutter/material.dart';

class PrivatePageModel extends FlutterFlowModel<PrivatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
