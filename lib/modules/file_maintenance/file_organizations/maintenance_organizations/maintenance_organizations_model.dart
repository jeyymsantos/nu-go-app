import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'maintenance_organizations_widget.dart'
    show MaintenanceOrganizationsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MaintenanceOrganizationsModel
    extends FlutterFlowModel<MaintenanceOrganizationsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for org_name widget.
  FocusNode? orgNameFocusNode;
  TextEditingController? orgNameTextController;
  String? Function(BuildContext, String?)? orgNameTextControllerValidator;
  String? _orgNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for org_nickname widget.
  FocusNode? orgNicknameFocusNode;
  TextEditingController? orgNicknameTextController;
  String? Function(BuildContext, String?)? orgNicknameTextControllerValidator;
  String? _orgNicknameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for org_founder widget.
  String? orgFounderValue;
  FormFieldController<String>? orgFounderValueController;
  // State field(s) for org_purpose widget.
  FocusNode? orgPurposeFocusNode;
  TextEditingController? orgPurposeTextController;
  String? Function(BuildContext, String?)? orgPurposeTextControllerValidator;
  String? _orgPurposeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for org_type widget.
  String? orgTypeValue;
  FormFieldController<String>? orgTypeValueController;
  // State field(s) for org_SCOPE widget.
  String? orgSCOPEValue;
  FormFieldController<String>? orgSCOPEValueController;
  // State field(s) for org_adviser widget.
  String? orgAdviserValue;
  FormFieldController<String>? orgAdviserValueController;
  // Stores action output result for [Custom Action - getUserDocument] action in Save widget.
  UsersRecord? orgFounderOutput;
  // Stores action output result for [Custom Action - getUserDocument] action in Save widget.
  UsersRecord? orgAdviserOutput;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    orgNameTextControllerValidator = _orgNameTextControllerValidator;
    orgNicknameTextControllerValidator = _orgNicknameTextControllerValidator;
    orgPurposeTextControllerValidator = _orgPurposeTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    orgNameFocusNode?.dispose();
    orgNameTextController?.dispose();

    orgNicknameFocusNode?.dispose();
    orgNicknameTextController?.dispose();

    orgPurposeFocusNode?.dispose();
    orgPurposeTextController?.dispose();
  }
}
