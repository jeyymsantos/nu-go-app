import '/flutter_flow/flutter_flow_util.dart';
import 'update_officer_component_widget.dart' show UpdateOfficerComponentWidget;
import 'package:flutter/material.dart';

class UpdateOfficerComponentModel
    extends FlutterFlowModel<UpdateOfficerComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for position widget.
  FocusNode? positionFocusNode;
  TextEditingController? positionTextController;
  String? Function(BuildContext, String?)? positionTextControllerValidator;
  String? _positionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for positionRank widget.
  FocusNode? positionRankFocusNode;
  TextEditingController? positionRankTextController;
  String? Function(BuildContext, String?)? positionRankTextControllerValidator;
  String? _positionRankTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(0?[1-9]|[1-9][0-9])\$').hasMatch(val)) {
      return 'Please input a valid number.';
    }
    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? officerConfirmDialog;

  @override
  void initState(BuildContext context) {
    positionTextControllerValidator = _positionTextControllerValidator;
    positionRankTextControllerValidator = _positionRankTextControllerValidator;
  }

  @override
  void dispose() {
    positionFocusNode?.dispose();
    positionTextController?.dispose();

    positionRankFocusNode?.dispose();
    positionRankTextController?.dispose();
  }
}
