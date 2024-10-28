import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'event_guests_all_widget.dart' show EventGuestsAllWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EventGuestsAllModel extends FlutterFlowModel<EventGuestsAllWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar_eventProfile component.
  late SideBarEventProfileModel sideBarEventProfileModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Row widget.
  bool? approveConfirmDialog;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Row widget.
  bool? declineConfirmDialogCopy;

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
