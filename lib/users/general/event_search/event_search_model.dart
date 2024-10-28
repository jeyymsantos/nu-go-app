import '/backend/backend.dart';
import '/components/widgets/event_type_choice/event_type_choice_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_search_widget.dart' show EventSearchWidget;
import 'package:flutter/material.dart';

class EventSearchModel extends FlutterFlowModel<EventSearchWidget> {
  ///  Local state fields for this page.

  bool liked = false;

  bool filter = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<EventsRecord> simpleSearchResults = [];
  // Model for EventType_Choice component.
  late EventTypeChoiceModel eventTypeChoiceModel;

  @override
  void initState(BuildContext context) {
    eventTypeChoiceModel = createModel(context, () => EventTypeChoiceModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    eventTypeChoiceModel.dispose();
  }
}
