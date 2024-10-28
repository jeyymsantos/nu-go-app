import '/flutter_flow/flutter_flow_util.dart';
import 'event_decline_bottom_sheet_widget.dart'
    show EventDeclineBottomSheetWidget;
import 'package:flutter/material.dart';

class EventDeclineBottomSheetModel
    extends FlutterFlowModel<EventDeclineBottomSheetWidget> {
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
  bool? confirmDialogDecline;

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
