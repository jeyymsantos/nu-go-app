import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  bool liked = false;

  bool filter = false;

  bool hideNotif = true;

  ///  State fields for stateful widgets in this page.

  // Model for UserHeaderComponent component.
  late UserHeaderComponentModel userHeaderComponentModel;
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
    userNavBarComponentModel.dispose();
  }
}
