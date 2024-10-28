import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_approval_offices_update_widget.dart'
    show AdminApprovalOfficesUpdateWidget;
import 'package:flutter/material.dart';

class AdminApprovalOfficesUpdateModel
    extends FlutterFlowModel<AdminApprovalOfficesUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for approval_set_name widget.
  FocusNode? approvalSetNameFocusNode;
  TextEditingController? approvalSetNameTextController;
  String? Function(BuildContext, String?)?
      approvalSetNameTextControllerValidator;
  String? _approvalSetNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - reorderItems] action in ListView widget.
  List<ApprovalSignatoryStruct>? updatedList;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmPassword;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    approvalSetNameTextControllerValidator =
        _approvalSetNameTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    approvalSetNameFocusNode?.dispose();
    approvalSetNameTextController?.dispose();
  }
}
