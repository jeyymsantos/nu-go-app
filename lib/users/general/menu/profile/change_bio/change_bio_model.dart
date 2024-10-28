import '/flutter_flow/flutter_flow_util.dart';
import 'change_bio_widget.dart' show ChangeBioWidget;
import 'package:flutter/material.dart';

class ChangeBioModel extends FlutterFlowModel<ChangeBioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for bio_message widget.
  FocusNode? bioMessageFocusNode;
  TextEditingController? bioMessageTextController;
  String? Function(BuildContext, String?)? bioMessageTextControllerValidator;
  String? _bioMessageTextControllerValidator(
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
    bioMessageTextControllerValidator = _bioMessageTextControllerValidator;
  }

  @override
  void dispose() {
    bioMessageFocusNode?.dispose();
    bioMessageTextController?.dispose();
  }
}
