import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'maintenance_office_widget.dart' show MaintenanceOfficeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MaintenanceOfficeModel extends FlutterFlowModel<MaintenanceOfficeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for office_head_dropdown widget.
  String? officeHeadDropdownValue;
  FormFieldController<String>? officeHeadDropdownValueController;
  // State field(s) for office_name_field widget.
  FocusNode? officeNameFieldFocusNode;
  TextEditingController? officeNameFieldTextController;
  String? Function(BuildContext, String?)?
      officeNameFieldTextControllerValidator;
  String? _officeNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for office_nickname_field widget.
  FocusNode? officeNicknameFieldFocusNode;
  TextEditingController? officeNicknameFieldTextController;
  String? Function(BuildContext, String?)?
      officeNicknameFieldTextControllerValidator;
  String? _officeNicknameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for office_description widget.
  FocusNode? officeDescriptionFocusNode;
  TextEditingController? officeDescriptionTextController;
  String? Function(BuildContext, String?)?
      officeDescriptionTextControllerValidator;
  String? _officeDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - getUserDocument] action in Save widget.
  UsersRecord? officeHeadOutput;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    officeNameFieldTextControllerValidator =
        _officeNameFieldTextControllerValidator;
    officeNicknameFieldTextControllerValidator =
        _officeNicknameFieldTextControllerValidator;
    officeDescriptionTextControllerValidator =
        _officeDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    officeNameFieldFocusNode?.dispose();
    officeNameFieldTextController?.dispose();

    officeNicknameFieldFocusNode?.dispose();
    officeNicknameFieldTextController?.dispose();

    officeDescriptionFocusNode?.dispose();
    officeDescriptionTextController?.dispose();
  }
}
