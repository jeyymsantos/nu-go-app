import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'maintenance_organizations_widget.dart'
    show MaintenanceOrganizationsWidget;
import 'package:flutter/material.dart';

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
  UsersRecord? orgAdviserOutput;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmOrg;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    orgNameTextControllerValidator = _orgNameTextControllerValidator;
    orgPurposeTextControllerValidator = _orgPurposeTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    orgNameFocusNode?.dispose();
    orgNameTextController?.dispose();

    orgPurposeFocusNode?.dispose();
    orgPurposeTextController?.dispose();
  }
}
