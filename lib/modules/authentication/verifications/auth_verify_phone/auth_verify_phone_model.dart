import '/flutter_flow/flutter_flow_util.dart';
import 'auth_verify_phone_widget.dart' show AuthVerifyPhoneWidget;
import 'package:flutter/material.dart';

class AuthVerifyPhoneModel extends FlutterFlowModel<AuthVerifyPhoneWidget> {
  ///  State fields for stateful widgets in this page.

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
