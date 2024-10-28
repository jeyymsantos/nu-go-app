import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'maintenance_programs_widget.dart' show MaintenanceProgramsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmProgram;

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
