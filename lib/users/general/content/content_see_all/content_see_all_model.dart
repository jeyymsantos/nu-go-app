import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'content_see_all_widget.dart' show ContentSeeAllWidget;
import 'package:flutter/material.dart';

class ContentSeeAllModel extends FlutterFlowModel<ContentSeeAllWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ContentRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
