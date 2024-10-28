import '/components/widgets/sort_logs/sort_logs_widget.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_logs_delete_widget.dart' show AdminLogsDeleteWidget;
import 'package:flutter/material.dart';

class AdminLogsDeleteModel extends FlutterFlowModel<AdminLogsDeleteWidget> {
  ///  Local state fields for this page.

  bool filterLevel = false;

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for subtitle_header component.
  late SubtitleHeaderModel subtitleHeaderModel;
  // State field(s) for content_search widget.
  FocusNode? contentSearchFocusNode;
  TextEditingController? contentSearchTextController;
  String? Function(BuildContext, String?)? contentSearchTextControllerValidator;
  // Model for sortLogs component.
  late SortLogsModel sortLogsModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Icon widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    subtitleHeaderModel = createModel(context, () => SubtitleHeaderModel());
    sortLogsModel = createModel(context, () => SortLogsModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    subtitleHeaderModel.dispose();
    contentSearchFocusNode?.dispose();
    contentSearchTextController?.dispose();

    sortLogsModel.dispose();
  }
}
