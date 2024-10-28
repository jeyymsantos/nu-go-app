import '/backend/schema/structs/index.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editing_of_office_approver_widget.dart'
    show EditingOfOfficeApproverWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EditingOfOfficeApproverModel
    extends FlutterFlowModel<EditingOfOfficeApproverWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for approvalNote widget.
  FocusNode? approvalNoteFocusNode;
  TextEditingController? approvalNoteTextController;
  String? Function(BuildContext, String?)? approvalNoteTextControllerValidator;
  String? _approvalNoteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {
    approvalNoteTextControllerValidator = _approvalNoteTextControllerValidator;
  }

  @override
  void dispose() {
    approvalNoteFocusNode?.dispose();
    approvalNoteTextController?.dispose();
  }
}
