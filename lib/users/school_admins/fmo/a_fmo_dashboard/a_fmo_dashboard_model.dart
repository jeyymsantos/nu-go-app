import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_fmo_dashboard_widget.dart' show AFmoDashboardWidget;
import 'package:flutter/material.dart';

class AFmoDashboardModel extends FlutterFlowModel<AFmoDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UserHeaderComponent component.
  late UserHeaderComponentModel userHeaderComponentModel;
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
    userNavBarComponentModel.dispose();
  }
}
