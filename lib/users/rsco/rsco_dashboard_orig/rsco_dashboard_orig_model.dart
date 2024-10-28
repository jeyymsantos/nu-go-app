import '/flutter_flow/flutter_flow_util.dart';
import '/users/rsco/org_management/components/rsco_sidebar/rsco_sidebar_widget.dart';
import 'rsco_dashboard_orig_widget.dart' show RscoDashboardOrigWidget;
import 'package:flutter/material.dart';

class RscoDashboardOrigModel extends FlutterFlowModel<RscoDashboardOrigWidget> {
  ///  Local state fields for this page.

  bool liked = false;

  bool filter = false;

  ///  State fields for stateful widgets in this page.

  // Model for rsco_sidebar component.
  late RscoSidebarModel rscoSidebarModel;

  @override
  void initState(BuildContext context) {
    rscoSidebarModel = createModel(context, () => RscoSidebarModel());
  }

  @override
  void dispose() {
    rscoSidebarModel.dispose();
  }
}
