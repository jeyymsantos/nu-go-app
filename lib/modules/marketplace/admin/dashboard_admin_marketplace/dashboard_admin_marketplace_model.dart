import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/modules/marketplace/user/component/item_card_marketplace/item_card_marketplace_widget.dart';
import 'dart:math';
import 'dashboard_admin_marketplace_widget.dart'
    show DashboardAdminMarketplaceWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DashboardAdminMarketplaceModel
    extends FlutterFlowModel<DashboardAdminMarketplaceWidget> {
  ///  Local state fields for this page.

  double? totalSales = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in dashboard_admin_marketplace widget.
  List<OrdersRecord>? completedOrders;
  // Models for itemCard_marketplace dynamic component.
  late FlutterFlowDynamicModels<ItemCardMarketplaceModel>
      itemCardMarketplaceModels;

  @override
  void initState(BuildContext context) {
    itemCardMarketplaceModels =
        FlutterFlowDynamicModels(() => ItemCardMarketplaceModel());
  }

  @override
  void dispose() {
    itemCardMarketplaceModels.dispose();
  }
}
