import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sidebar_tile_n_u_go/sidebar_tile_n_u_go_widget.dart';
import '/components/sidebar_tile_n_u_go_sub_content/sidebar_tile_n_u_go_sub_content_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:math' as math;
import 'rsco_sidebar_widget.dart' show RscoSidebarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RscoSidebarModel extends FlutterFlowModel<RscoSidebarWidget> {
  ///  Local state fields for this component.

  int expandedOption = 0;

  ///  State fields for stateful widgets in this component.

  // Model for sidebarTileNUGo component.
  late SidebarTileNUGoModel sidebarTileNUGoModel1;
  // Model for sidebarTileNUGo component.
  late SidebarTileNUGoModel sidebarTileNUGoModel2;
  // Model for sidebarTileNUGo component.
  late SidebarTileNUGoModel sidebarTileNUGoModel3;
  // Model for sidebarTileNUGo component.
  late SidebarTileNUGoModel sidebarTileNUGoModel4;
  // Model for sidebarTileNUGo component.
  late SidebarTileNUGoModel sidebarTileNUGoModel5;
  // Model for sidebarTileNUGoSubContent component.
  late SidebarTileNUGoSubContentModel sidebarTileNUGoSubContentModel1;
  // Model for sidebarTileNUGoSubContent component.
  late SidebarTileNUGoSubContentModel sidebarTileNUGoSubContentModel2;
  // Model for sidebarTileNUGo component.
  late SidebarTileNUGoModel sidebarTileNUGoModel6;

  @override
  void initState(BuildContext context) {
    sidebarTileNUGoModel1 = createModel(context, () => SidebarTileNUGoModel());
    sidebarTileNUGoModel2 = createModel(context, () => SidebarTileNUGoModel());
    sidebarTileNUGoModel3 = createModel(context, () => SidebarTileNUGoModel());
    sidebarTileNUGoModel4 = createModel(context, () => SidebarTileNUGoModel());
    sidebarTileNUGoModel5 = createModel(context, () => SidebarTileNUGoModel());
    sidebarTileNUGoSubContentModel1 =
        createModel(context, () => SidebarTileNUGoSubContentModel());
    sidebarTileNUGoSubContentModel2 =
        createModel(context, () => SidebarTileNUGoSubContentModel());
    sidebarTileNUGoModel6 = createModel(context, () => SidebarTileNUGoModel());
  }

  @override
  void dispose() {
    sidebarTileNUGoModel1.dispose();
    sidebarTileNUGoModel2.dispose();
    sidebarTileNUGoModel3.dispose();
    sidebarTileNUGoModel4.dispose();
    sidebarTileNUGoModel5.dispose();
    sidebarTileNUGoSubContentModel1.dispose();
    sidebarTileNUGoSubContentModel2.dispose();
    sidebarTileNUGoModel6.dispose();
  }
}
