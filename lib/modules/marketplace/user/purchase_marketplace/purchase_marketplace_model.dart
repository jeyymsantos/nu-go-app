import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'purchase_marketplace_widget.dart' show PurchaseMarketplaceWidget;
import 'package:flutter/material.dart';

class PurchaseMarketplaceModel
    extends FlutterFlowModel<PurchaseMarketplaceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProductsRecord? productDoc;

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
