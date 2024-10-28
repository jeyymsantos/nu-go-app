import '/flutter_flow/flutter_flow_util.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import 'event_guests_all_widget.dart' show EventGuestsAllWidget;
import 'package:flutter/material.dart';

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
