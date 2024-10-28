import '/flutter_flow/flutter_flow_util.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import 'event_profile_dashboard_widget.dart' show EventProfileDashboardWidget;
import 'package:flutter/material.dart';

class EventProfileDashboardModel
    extends FlutterFlowModel<EventProfileDashboardWidget> {
  ///  Local state fields for this page.

  String? address;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getAddressFromLatLng] action in event_profile_dashboard widget.
  String? givenAddress;
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
