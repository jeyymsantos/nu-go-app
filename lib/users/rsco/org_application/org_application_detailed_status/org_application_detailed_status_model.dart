import '/components/widgets/approver_circle_head/approver_circle_head_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'org_application_detailed_status_widget.dart'
    show OrgApplicationDetailedStatusWidget;
import 'package:flutter/material.dart';

class OrgApplicationDetailedStatusModel
    extends FlutterFlowModel<OrgApplicationDetailedStatusWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Models for dynamicApproval.
  late FlutterFlowDynamicModels<ApproverCircleHeadModel> dynamicApprovalModels;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    dynamicApprovalModels =
        FlutterFlowDynamicModels(() => ApproverCircleHeadModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    dynamicApprovalModels.dispose();
  }
}
