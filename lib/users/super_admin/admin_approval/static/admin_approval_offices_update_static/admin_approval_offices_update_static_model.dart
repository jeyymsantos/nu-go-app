import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_approval_offices_update_static_widget.dart'
    show AdminApprovalOfficesUpdateStaticWidget;
import 'package:flutter/material.dart';

class AdminApprovalOfficesUpdateStaticModel
    extends FlutterFlowModel<AdminApprovalOfficesUpdateStaticWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Stores action output result for [Custom Action - reorderItems] action in ListView widget.
  List<ApprovalSignatoryStruct>? updatedList;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmPassword;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }
}
