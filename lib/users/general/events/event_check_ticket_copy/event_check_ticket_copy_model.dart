import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_check_ticket_copy_widget.dart' show EventCheckTicketCopyWidget;
import 'package:flutter/material.dart';

class EventCheckTicketCopyModel
    extends FlutterFlowModel<EventCheckTicketCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  RoomsRecord? facilityOutput;
  // Stores action output result for [Custom Action - addEventToCalendar] action in Container widget.
  String? campusOutput;
  // Stores action output result for [Custom Action - addEventToCalendar] action in Container widget.
  String? onlineOutput;
  // Stores action output result for [Custom Action - getAddressFromLatLng] action in Container widget.
  String? outsideOutput;
  // Stores action output result for [Custom Action - addEventToCalendar] action in Container widget.
  String? addressOutput;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in RichTextSpan widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
