import '/flutter_flow/flutter_flow_util.dart';
import 'view_public_widget.dart' show ViewPublicWidget;
import 'package:flutter/material.dart';

class ViewPublicModel extends FlutterFlowModel<ViewPublicWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
