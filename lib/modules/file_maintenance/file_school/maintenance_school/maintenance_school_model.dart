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
import 'maintenance_school_widget.dart' show MaintenanceSchoolWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmSchool;

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
