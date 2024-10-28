import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_search_widget.dart' show EventSearchWidget;
import 'package:flutter/material.dart';

class EventSearchModel extends FlutterFlowModel<EventSearchWidget> {
  ///  Local state fields for this page.

  bool liked = false;

  bool filter = false;

  int eventType = -1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<EventsRecord> simpleSearchResults1 = [];
  List<EventsRecord> simpleSearchResults2 = [];
  List<EventsRecord> simpleSearchResults3 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
