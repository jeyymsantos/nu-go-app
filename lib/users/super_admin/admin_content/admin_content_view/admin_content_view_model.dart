import '/backend/backend.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_content_view_widget.dart' show AdminContentViewWidget;
import 'package:flutter/material.dart';

class AdminContentViewModel extends FlutterFlowModel<AdminContentViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for subtitle_header component.
  late SubtitleHeaderModel subtitleHeaderModel;
  // State field(s) for content_search widget.
  FocusNode? contentSearchFocusNode;
  TextEditingController? contentSearchTextController;
  String? Function(BuildContext, String?)? contentSearchTextControllerValidator;
  List<ContentRecord> simpleSearchResults = [];
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Icon widget.
  bool? confirmDialog;

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
