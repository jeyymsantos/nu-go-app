import '/flutter_flow/flutter_flow_util.dart';
import 'editing_of_office_approver_widget.dart'
    show EditingOfOfficeApproverWidget;
import 'package:flutter/material.dart';

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
