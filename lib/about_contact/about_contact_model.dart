import '/flutter_flow/flutter_flow_util.dart';
import 'about_contact_widget.dart' show AboutContactWidget;
import 'package:flutter/material.dart';

class AboutContactModel extends FlutterFlowModel<AboutContactWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
