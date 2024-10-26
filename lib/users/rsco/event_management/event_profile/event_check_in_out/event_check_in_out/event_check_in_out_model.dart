import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/dialog_box/failed_dialog_box/failed_dialog_box_widget.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'event_check_in_out_widget.dart' show EventCheckInOutWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
