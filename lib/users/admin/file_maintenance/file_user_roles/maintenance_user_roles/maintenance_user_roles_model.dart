import '/flutter_flow/flutter_flow_util.dart';
import 'maintenance_user_roles_widget.dart' show MaintenanceUserRolesWidget;
import 'package:flutter/material.dart';

class MaintenanceUserRolesModel
    extends FlutterFlowModel<MaintenanceUserRolesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for first_name_field widget.
  FocusNode? firstNameFieldFocusNode1;
  TextEditingController? firstNameFieldController1;
  String? Function(BuildContext, String?)? firstNameFieldController1Validator;
  String? _firstNameFieldController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for first_name_field widget.
  FocusNode? firstNameFieldFocusNode2;
  TextEditingController? firstNameFieldController2;
  String? Function(BuildContext, String?)? firstNameFieldController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    firstNameFieldController1Validator = _firstNameFieldController1Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFieldFocusNode1?.dispose();
    firstNameFieldController1?.dispose();

    firstNameFieldFocusNode2?.dispose();
    firstNameFieldController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
