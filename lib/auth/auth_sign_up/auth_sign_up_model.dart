import '/flutter_flow/flutter_flow_util.dart';
import 'auth_sign_up_widget.dart' show AuthSignUpWidget;
import 'package:flutter/material.dart';

class AuthSignUpModel extends FlutterFlowModel<AuthSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for email_field widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  String? _emailFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^[a-zA-Z0-9._-]+@students.nu-baliwag.edu.ph|^[a-zA-Z0-9._-]+@nu-baliwag.edu.ph')
        .hasMatch(val)) {
      return 'Only NU accounts are allowed to sign up.';
    }
    return null;
  }

  // State field(s) for password_field widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  String? _passwordFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Password should be atleast 8 characters.';
    }

    return null;
  }

  // State field(s) for confirm_password_field widget.
  FocusNode? confirmPasswordFieldFocusNode;
  TextEditingController? confirmPasswordFieldController;
  late bool confirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordFieldControllerValidator;
  String? _confirmPasswordFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Confirm Password should also be atleast 8 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    emailFieldControllerValidator = _emailFieldControllerValidator;
    passwordFieldVisibility = false;
    passwordFieldControllerValidator = _passwordFieldControllerValidator;
    confirmPasswordFieldVisibility = false;
    confirmPasswordFieldControllerValidator =
        _confirmPasswordFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldController?.dispose();

    confirmPasswordFieldFocusNode?.dispose();
    confirmPasswordFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
