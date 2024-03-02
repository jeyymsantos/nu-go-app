import '/flutter_flow/flutter_flow_util.dart';
import 'auth_verify_email_widget.dart' show AuthVerifyEmailWidget;
import 'package:flutter/material.dart';

class AuthVerifyEmailModel extends FlutterFlowModel<AuthVerifyEmailWidget> {
  ///  Local state fields for this page.

  bool emailVerified = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
