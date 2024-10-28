import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'org_members_pending_widget.dart' show OrgMembersPendingWidget;
import 'package:flutter/material.dart';

class OrgMembersPendingModel extends FlutterFlowModel<OrgMembersPendingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Row widget.
  bool? approveConfirmDialog;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Row widget.
  bool? declineConfirmDialogCopy;

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
