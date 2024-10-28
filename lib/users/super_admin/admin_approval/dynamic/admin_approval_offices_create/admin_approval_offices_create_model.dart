import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/super_admin/admin_approval/components/editing_of_office_approver/editing_of_office_approver_widget.dart';
import '/users/super_admin/admin_approval/components/list_of_office_approver/list_of_office_approver_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'admin_approval_offices_create_widget.dart'
    show AdminApprovalOfficesCreateWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AdminApprovalOfficesCreateModel
    extends FlutterFlowModel<AdminApprovalOfficesCreateWidget> {
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
