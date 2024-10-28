import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_logs_widget.dart' show AdminLogsWidget;
import 'package:flutter/material.dart';

class AdminLogsModel extends FlutterFlowModel<AdminLogsWidget> {
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
    contentSearchFocusNode?.dispose();
    contentSearchTextController?.dispose();
  }
}
