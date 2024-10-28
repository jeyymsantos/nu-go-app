import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'org_application_widget.dart' show OrgApplicationWidget;
import 'package:flutter/material.dart';

class OrgApplicationModel extends FlutterFlowModel<OrgApplicationWidget> {
  ///  Local state fields for this page.

  List<ApprovalSignatoryStruct> approvalSignatory = [];
  void addToApprovalSignatory(ApprovalSignatoryStruct item) =>
      approvalSignatory.add(item);
  void removeFromApprovalSignatory(ApprovalSignatoryStruct item) =>
      approvalSignatory.remove(item);
  void removeAtIndexFromApprovalSignatory(int index) =>
      approvalSignatory.removeAt(index);
  void insertAtIndexInApprovalSignatory(
          int index, ApprovalSignatoryStruct item) =>
      approvalSignatory.insert(index, item);
  void updateApprovalSignatoryAtIndex(
          int index, Function(ApprovalSignatoryStruct) updateFn) =>
      approvalSignatory[index] = updateFn(approvalSignatory[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

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

  // State field(s) for org_type widget.
  String? orgTypeValue;
  FormFieldController<String>? orgTypeValueController;
  // State field(s) for scope widget.
  String? scopeValue;
  FormFieldController<String>? scopeValueController;
  // State field(s) for adviser widget.
  String? adviserValue;
  FormFieldController<String>? adviserValueController;
  // State field(s) for purpose widget.
  FocusNode? purposeFocusNode;
  TextEditingController? purposeTextController;
  String? Function(BuildContext, String?)? purposeTextControllerValidator;
  String? _purposeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ApprovalSetsRecord? orgApprovalSet;
  // Stores action output result for [Custom Action - getUserDocument] action in Button widget.
  UsersRecord? adviserRef;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? orgCount;
  // Stores action output result for [Custom Action - getOrganizationDocument] action in Button widget.
  OrganizationsRecord? orgOutput;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    orgNameTextControllerValidator = _orgNameTextControllerValidator;
    purposeTextControllerValidator = _purposeTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    orgNameFocusNode?.dispose();
    orgNameTextController?.dispose();

    purposeFocusNode?.dispose();
    purposeTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
