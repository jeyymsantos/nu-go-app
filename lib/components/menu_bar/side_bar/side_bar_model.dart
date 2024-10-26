import '/auth/firebase_auth/auth_util.dart';
import '/components/sidebar_tile/sidebar_tile_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'side_bar_widget.dart' show SideBarWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SideBarModel extends FlutterFlowModel<SideBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for rsco_dashboard_tile.
  late SidebarTileModel rscoDashboardTileModel;
  // Model for editOrganization.
  late SidebarTileModel editOrganizationModel;
  // Model for members.
  late SidebarTileModel membersModel;
  // Model for events.
  late SidebarTileModel eventsModel;
  // Model for forms.
  late SidebarTileModel formsModel;
  // Model for Reports.
  late SidebarTileModel reportsModel;

  @override
  void initState(BuildContext context) {
    rscoDashboardTileModel = createModel(context, () => SidebarTileModel());
    editOrganizationModel = createModel(context, () => SidebarTileModel());
    membersModel = createModel(context, () => SidebarTileModel());
    eventsModel = createModel(context, () => SidebarTileModel());
    formsModel = createModel(context, () => SidebarTileModel());
    reportsModel = createModel(context, () => SidebarTileModel());
  }

  @override
  void dispose() {
    rscoDashboardTileModel.dispose();
    editOrganizationModel.dispose();
    membersModel.dispose();
    eventsModel.dispose();
    formsModel.dispose();
    reportsModel.dispose();
  }
}
