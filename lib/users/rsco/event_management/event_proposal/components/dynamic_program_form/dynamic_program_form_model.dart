import '/flutter_flow/flutter_flow_util.dart';
import 'dynamic_program_form_widget.dart' show DynamicProgramFormWidget;
import 'package:flutter/material.dart';

class DynamicProgramFormModel
    extends FlutterFlowModel<DynamicProgramFormWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for org_name widget.
  FocusNode? orgNameFocusNode;
  TextEditingController? orgNameTextController;
  String? Function(BuildContext, String?)? orgNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    orgNameFocusNode?.dispose();
    orgNameTextController?.dispose();
  }
}
