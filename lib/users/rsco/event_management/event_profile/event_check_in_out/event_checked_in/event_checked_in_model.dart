import '/flutter_flow/flutter_flow_util.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import 'event_checked_in_widget.dart' show EventCheckedInWidget;
import 'package:flutter/material.dart';

class EventCheckedInModel extends FlutterFlowModel<EventCheckedInWidget> {
  ///  Local state fields for this page.

  String scannedQRcode = '';

  ///  State fields for stateful widgets in this page.

  // Model for SideBar_eventProfile component.
  late SideBarEventProfileModel sideBarEventProfileModel;

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
