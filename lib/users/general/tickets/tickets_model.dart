import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tickets_widget.dart' show TicketsWidget;
import 'package:flutter/material.dart';

class TicketsModel extends FlutterFlowModel<TicketsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UserHeaderComponent component.
  late UserHeaderComponentModel userHeaderComponentModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
    tabBarController?.dispose();
    userNavBarComponentModel.dispose();
  }
}
