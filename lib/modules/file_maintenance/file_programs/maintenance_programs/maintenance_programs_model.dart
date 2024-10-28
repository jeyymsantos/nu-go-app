import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'maintenance_programs_widget.dart' show MaintenanceProgramsWidget;
import 'package:flutter/material.dart';

class MaintenanceProgramsModel
    extends FlutterFlowModel<MaintenanceProgramsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for school_assigned_dropdown widget.
  String? schoolAssignedDropdownValue;
  FormFieldController<String>? schoolAssignedDropdownValueController;
  // State field(s) for program_name_field widget.
  FocusNode? programNameFieldFocusNode;
  TextEditingController? programNameFieldTextController;
  String? Function(BuildContext, String?)?
      programNameFieldTextControllerValidator;
  String? _programNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for program_nickname_field widget.
  FocusNode? programNicknameFieldFocusNode;
  TextEditingController? programNicknameFieldTextController;
  String? Function(BuildContext, String?)?
      programNicknameFieldTextControllerValidator;
  String? _programNicknameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for program_chair_dropdown widget.
  String? programChairDropdownValue;
  FormFieldController<String>? programChairDropdownValueController;
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
  // Stores action output result for [Custom Action - getSchoolDocument] action in Save widget.
  SchoolsRecord? schoolOutput;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    programNameFieldTextControllerValidator =
        _programNameFieldTextControllerValidator;
    programNicknameFieldTextControllerValidator =
        _programNicknameFieldTextControllerValidator;
    schoolDescriptionTextControllerValidator =
        _schoolDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    programNameFieldFocusNode?.dispose();
    programNameFieldTextController?.dispose();

    programNicknameFieldFocusNode?.dispose();
    programNicknameFieldTextController?.dispose();

    schoolDescriptionFocusNode?.dispose();
    schoolDescriptionTextController?.dispose();
  }
}
