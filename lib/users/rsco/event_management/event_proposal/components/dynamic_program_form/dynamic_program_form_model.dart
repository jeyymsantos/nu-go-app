import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dynamic_program_form_widget.dart' show DynamicProgramFormWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
