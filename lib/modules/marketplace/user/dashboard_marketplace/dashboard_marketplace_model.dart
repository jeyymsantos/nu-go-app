import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/modules/marketplace/user/component/item_card_marketplace/item_card_marketplace_widget.dart';
import 'dart:math';
import 'dashboard_marketplace_widget.dart' show DashboardMarketplaceWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

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
