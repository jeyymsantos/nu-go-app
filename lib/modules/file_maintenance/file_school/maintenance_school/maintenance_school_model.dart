import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'maintenance_school_widget.dart' show MaintenanceSchoolWidget;
import 'package:flutter/material.dart';

class MaintenanceSchoolModel extends FlutterFlowModel<MaintenanceSchoolWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for school_name_field widget.
  FocusNode? schoolNameFieldFocusNode;
  TextEditingController? schoolNameFieldTextController;
  String? Function(BuildContext, String?)?
      schoolNameFieldTextControllerValidator;
  String? _schoolNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for school_nickname_field widget.
  FocusNode? schoolNicknameFieldFocusNode;
  TextEditingController? schoolNicknameFieldTextController;
  String? Function(BuildContext, String?)?
      schoolNicknameFieldTextControllerValidator;
  String? _schoolNicknameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for dean_dropdown widget.
  String? deanDropdownValue;
  FormFieldController<String>? deanDropdownValueController;
  // State field(s) for school_description widget.
  FocusNode? schoolDescriptionFocusNode;
  TextEditingController? schoolDescriptionTextController;
  String? Function(BuildContext, String?)?
      schoolDescriptionTextControllerValidator;
  String? _schoolDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - getUserDocument] action in Save widget.
  UsersRecord? userOutput;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    schoolNameFieldTextControllerValidator =
        _schoolNameFieldTextControllerValidator;
    schoolNicknameFieldTextControllerValidator =
        _schoolNicknameFieldTextControllerValidator;
    schoolDescriptionTextControllerValidator =
        _schoolDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    schoolNameFieldFocusNode?.dispose();
    schoolNameFieldTextController?.dispose();

    schoolNicknameFieldFocusNode?.dispose();
    schoolNicknameFieldTextController?.dispose();

    schoolDescriptionFocusNode?.dispose();
    schoolDescriptionTextController?.dispose();
  }
}
