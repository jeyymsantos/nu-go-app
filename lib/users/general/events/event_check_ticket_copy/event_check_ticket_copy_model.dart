import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'event_check_ticket_copy_widget.dart' show EventCheckTicketCopyWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
