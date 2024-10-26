import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/failed_dialog_box/failed_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'auth_forgot_password_widget.dart' show AuthForgotPasswordWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AuthForgotPasswordModel
    extends FlutterFlowModel<AuthForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for email_field widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  String? _emailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^[a-zA-Z0-9._-]+@students.nu-baliwag.edu.ph|^[a-zA-Z0-9._-]+@nu-baliwag.edu.ph')
        .hasMatch(val)) {
      return 'Only NU accounts are allowed.';
    }
    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in reset_button widget.
  UsersRecord? userResult;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    emailFieldTextControllerValidator = _emailFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();
  }
}
