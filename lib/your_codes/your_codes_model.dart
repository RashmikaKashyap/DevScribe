import '/flutter_flow/flutter_flow_util.dart';
import 'your_codes_widget.dart' show YourCodesWidget;
import 'package:flutter/material.dart';

class YourCodesModel extends FlutterFlowModel<YourCodesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
