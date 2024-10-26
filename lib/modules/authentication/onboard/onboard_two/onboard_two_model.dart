import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'onboard_two_widget.dart' show OnboardTwoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardTwoModel extends FlutterFlowModel<OnboardTwoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for student_no_field widget.
  FocusNode? studentNoFieldFocusNode;
  TextEditingController? studentNoFieldTextController;
  String? Function(BuildContext, String?)?
      studentNoFieldTextControllerValidator;
  String? _studentNoFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^20\\d{2}-\\d{6,7}\$').hasMatch(val)) {
      return 'Student Number should follow the 20xx-xxxxxx format.';
    }
    return null;
  }

  // State field(s) for school_dropdown widget.
  String? schoolDropdownValue;
  FormFieldController<String>? schoolDropdownValueController;
  // Stores action output result for [Custom Action - getSchoolDocument] action in school_dropdown widget.
  SchoolsRecord? schoolOutput;
  // State field(s) for department widget.
  String? departmentValue;
  FormFieldController<String>? departmentValueController;
  // State field(s) for section_field widget.
  FocusNode? sectionFieldFocusNode;
  TextEditingController? sectionFieldTextController;
  String? Function(BuildContext, String?)? sectionFieldTextControllerValidator;
  String? _sectionFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - getProgramDocument] action in next_button widget.
  ProgramsRecord? programOutput;
  // State field(s) for honorifics widget.
  String? honorificsValue;
  FormFieldController<String>? honorificsValueController;
  // State field(s) for emp_role widget.
  String? empRoleValue;
  FormFieldController<String>? empRoleValueController;
  // State field(s) for emp_school_dropdown widget.
  String? empSchoolDropdownValue;
  FormFieldController<String>? empSchoolDropdownValueController;
  // Stores action output result for [Custom Action - getSchoolDocument] action in emp_school_dropdown widget.
  SchoolsRecord? empSchoolOutput;
  // State field(s) for emp_department widget.
  String? empDepartmentValue;
  FormFieldController<String>? empDepartmentValueController;
  // State field(s) for employee_no_field widget.
  FocusNode? employeeNoFieldFocusNode;
  TextEditingController? employeeNoFieldTextController;
  String? Function(BuildContext, String?)?
      employeeNoFieldTextControllerValidator;
  String? _employeeNoFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\d{2}-\\d{4}\$').hasMatch(val)) {
      return 'Employee ID should follow the xx-xxxx format.';
    }
    return null;
  }

  // Stores action output result for [Custom Action - getProgramDocument] action in next_button widget.
  ProgramsRecord? empProgramOutput;

  @override
  void initState(BuildContext context) {
    studentNoFieldTextControllerValidator =
        _studentNoFieldTextControllerValidator;
    sectionFieldTextControllerValidator = _sectionFieldTextControllerValidator;
    employeeNoFieldTextControllerValidator =
        _employeeNoFieldTextControllerValidator;
  }

  @override
  void dispose() {
    studentNoFieldFocusNode?.dispose();
    studentNoFieldTextController?.dispose();

    sectionFieldFocusNode?.dispose();
    sectionFieldTextController?.dispose();

    employeeNoFieldFocusNode?.dispose();
    employeeNoFieldTextController?.dispose();
  }
}
