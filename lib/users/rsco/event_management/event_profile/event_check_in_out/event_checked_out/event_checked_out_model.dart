import '/backend/backend.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import 'event_checked_out_widget.dart' show EventCheckedOutWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EventCheckedOutModel extends FlutterFlowModel<EventCheckedOutWidget> {
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
