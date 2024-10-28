import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_pending_orders_admin_marketplace_widget.dart'
    show MyPendingOrdersAdminMarketplaceWidget;
import 'package:flutter/material.dart';

class MyPendingOrdersAdminMarketplaceModel
    extends FlutterFlowModel<MyPendingOrdersAdminMarketplaceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Icon widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }
}
