import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'onboard_two_widget.dart' show OnboardTwoWidget;
import 'package:flutter/material.dart';

class OnboardTwoModel extends FlutterFlowModel<OnboardTwoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for student_no_field widget.
  FocusNode? studentNoFieldFocusNode;
  TextEditingController? studentNoFieldController;
  String? Function(BuildContext, String?)? studentNoFieldControllerValidator;
  String? _studentNoFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for school_dropdown widget.
  String? schoolDropdownValue;
  FormFieldController<String>? schoolDropdownValueController;
  // State field(s) for department widget.
  String? departmentValue;
  FormFieldController<String>? departmentValueController;
  // State field(s) for section_field widget.
  FocusNode? sectionFieldFocusNode;
  TextEditingController? sectionFieldController;
  String? Function(BuildContext, String?)? sectionFieldControllerValidator;
  String? _sectionFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    studentNoFieldControllerValidator = _studentNoFieldControllerValidator;
    sectionFieldControllerValidator = _sectionFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    studentNoFieldFocusNode?.dispose();
    studentNoFieldController?.dispose();

    sectionFieldFocusNode?.dispose();
    sectionFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
