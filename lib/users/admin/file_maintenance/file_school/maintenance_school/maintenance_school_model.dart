import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'maintenance_school_widget.dart' show MaintenanceSchoolWidget;
import 'package:flutter/material.dart';

class MaintenanceSchoolModel extends FlutterFlowModel<MaintenanceSchoolWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for first_name_field widget.
  FocusNode? firstNameFieldFocusNode;
  TextEditingController? firstNameFieldController;
  String? Function(BuildContext, String?)? firstNameFieldControllerValidator;
  String? _firstNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for last_name_field widget.
  FocusNode? lastNameFieldFocusNode;
  TextEditingController? lastNameFieldController;
  String? Function(BuildContext, String?)? lastNameFieldControllerValidator;
  String? _lastNameFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for barangay_address_field widget.
  FocusNode? barangayAddressFieldFocusNode;
  TextEditingController? barangayAddressFieldController;
  String? Function(BuildContext, String?)?
      barangayAddressFieldControllerValidator;
  String? _barangayAddressFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    firstNameFieldControllerValidator = _firstNameFieldControllerValidator;
    lastNameFieldControllerValidator = _lastNameFieldControllerValidator;
    barangayAddressFieldControllerValidator =
        _barangayAddressFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFieldFocusNode?.dispose();
    firstNameFieldController?.dispose();

    lastNameFieldFocusNode?.dispose();
    lastNameFieldController?.dispose();

    barangayAddressFieldFocusNode?.dispose();
    barangayAddressFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
