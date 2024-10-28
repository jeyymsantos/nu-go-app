import '/flutter_flow/flutter_flow_util.dart';
import 'event_revision_bottom_sheet_widget.dart'
    show EventRevisionBottomSheetWidget;
import 'package:flutter/material.dart';

class EventRevisionBottomSheetModel
    extends FlutterFlowModel<EventRevisionBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for revision_message widget.
  FocusNode? revisionMessageFocusNode;
  TextEditingController? revisionMessageTextController;
  String? Function(BuildContext, String?)?
      revisionMessageTextControllerValidator;
  String? _revisionMessageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialogRevision;

  @override
  void initState(BuildContext context) {
    revisionMessageTextControllerValidator =
        _revisionMessageTextControllerValidator;
  }

  @override
  void dispose() {
    revisionMessageFocusNode?.dispose();
    revisionMessageTextController?.dispose();
  }
}
