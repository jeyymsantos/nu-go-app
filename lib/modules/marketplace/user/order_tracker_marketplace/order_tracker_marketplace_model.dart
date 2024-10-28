import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'order_tracker_marketplace_widget.dart'
    show OrderTrackerMarketplaceWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderTrackerMarketplaceModel
    extends FlutterFlowModel<OrderTrackerMarketplaceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ViewOrder.
  late TitleHeaderComponentModel viewOrderModel;

  @override
  void initState(BuildContext context) {
    viewOrderModel = createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    viewOrderModel.dispose();
  }
}
