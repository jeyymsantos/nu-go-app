import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_deactivate_dialog_widget.dart'
    show ConfirmDeactivateDialogWidget;
import 'package:flutter/material.dart';

class ConfirmDeactivateDialogModel
    extends FlutterFlowModel<ConfirmDeactivateDialogWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - checkUserPassword] action in Button widget.
  bool? checkPassword;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
