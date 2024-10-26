import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'org_decline_bottom_sheet_widget.dart' show OrgDeclineBottomSheetWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OrgDeclineBottomSheetModel
    extends FlutterFlowModel<OrgDeclineBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for decline_message widget.
  FocusNode? declineMessageFocusNode;
  TextEditingController? declineMessageTextController;
  String? Function(BuildContext, String?)?
      declineMessageTextControllerValidator;
  String? _declineMessageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialogDeclineCopy;

  @override
  void initState(BuildContext context) {
    declineMessageTextControllerValidator =
        _declineMessageTextControllerValidator;
  }

  @override
  void dispose() {
    declineMessageFocusNode?.dispose();
    declineMessageTextController?.dispose();
  }
}
