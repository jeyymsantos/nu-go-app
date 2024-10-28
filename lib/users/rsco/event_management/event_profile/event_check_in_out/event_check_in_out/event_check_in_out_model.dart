import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import 'event_check_in_out_widget.dart' show EventCheckInOutWidget;
import 'package:flutter/material.dart';

class EventCheckInOutModel extends FlutterFlowModel<EventCheckInOutWidget> {
  ///  Local state fields for this page.

  String scannedQRcode = '';

  ///  State fields for stateful widgets in this page.

  // Model for SideBar_eventProfile component.
  late SideBarEventProfileModel sideBarEventProfileModel;
  var scannedQR = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  EventAttendeesRecord? qrOutput;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userOutput;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  EventAttendeesRecord? attendeeOutput;

  @override
  void initState(BuildContext context) {
    sideBarEventProfileModel =
        createModel(context, () => SideBarEventProfileModel());
  }

  @override
  void dispose() {
    sideBarEventProfileModel.dispose();
  }
}
