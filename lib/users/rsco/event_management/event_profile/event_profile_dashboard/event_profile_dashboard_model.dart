import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'event_profile_dashboard_widget.dart' show EventProfileDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
