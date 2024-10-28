import '/flutter_flow/flutter_flow_util.dart';
import 'join_event_using_code_widget.dart' show JoinEventUsingCodeWidget;
import 'package:flutter/material.dart';

class JoinEventUsingCodeModel
    extends FlutterFlowModel<JoinEventUsingCodeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
