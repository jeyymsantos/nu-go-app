import '/flutter_flow/flutter_flow_util.dart';
import '/modules/marketplace/user/component/item_card_marketplace/item_card_marketplace_widget.dart';
import 'dashboard_marketplace_widget.dart' show DashboardMarketplaceWidget;
import 'package:flutter/material.dart';

class DashboardMarketplaceModel
    extends FlutterFlowModel<DashboardMarketplaceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemCardMarketplaceModels.dispose();
  }
}
