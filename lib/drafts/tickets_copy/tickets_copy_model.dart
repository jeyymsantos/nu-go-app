import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:styled_divider/styled_divider.dart';
import 'tickets_copy_widget.dart' show TicketsCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TicketsCopyModel extends FlutterFlowModel<TicketsCopyWidget> {
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
