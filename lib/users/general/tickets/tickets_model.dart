import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/no_ticket/no_ticket_widget.dart';
import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/general/events/event_check_ticket/event_check_ticket_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'tickets_widget.dart' show TicketsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class TicketsModel extends FlutterFlowModel<TicketsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UserHeaderComponent component.
  late UserHeaderComponentModel userHeaderComponentModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for UserNavBarComponent component.
  late UserNavBarComponentModel userNavBarComponentModel;

  @override
  void initState(BuildContext context) {
    userHeaderComponentModel =
        createModel(context, () => UserHeaderComponentModel());
    userNavBarComponentModel =
        createModel(context, () => UserNavBarComponentModel());
  }

  @override
  void dispose() {
    userHeaderComponentModel.dispose();
    tabBarController?.dispose();
    userNavBarComponentModel.dispose();
  }
}
