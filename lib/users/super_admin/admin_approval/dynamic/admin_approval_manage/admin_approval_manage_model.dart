import '/backend/backend.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_approval_manage_widget.dart' show AdminApprovalManageWidget;
import 'package:flutter/material.dart';

class AdminApprovalManageModel
    extends FlutterFlowModel<AdminApprovalManageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for subtitle_header component.
  late SubtitleHeaderModel subtitleHeaderModel;
  // State field(s) for approval_search widget.
  FocusNode? approvalSearchFocusNode;
  TextEditingController? approvalSearchTextController;
  String? Function(BuildContext, String?)?
      approvalSearchTextControllerValidator;
  List<ApprovalSetsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    subtitleHeaderModel = createModel(context, () => SubtitleHeaderModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    subtitleHeaderModel.dispose();
    approvalSearchFocusNode?.dispose();
    approvalSearchTextController?.dispose();
  }
}
