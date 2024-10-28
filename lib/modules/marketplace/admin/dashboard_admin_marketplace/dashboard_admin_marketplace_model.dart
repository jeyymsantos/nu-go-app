import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/modules/marketplace/user/component/item_card_marketplace/item_card_marketplace_widget.dart';
import 'dashboard_admin_marketplace_widget.dart'
    show DashboardAdminMarketplaceWidget;
import 'package:flutter/material.dart';

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
