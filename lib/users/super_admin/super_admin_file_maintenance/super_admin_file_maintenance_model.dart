import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'super_admin_file_maintenance_widget.dart'
    show SuperAdminFileMaintenanceWidget;
import 'package:flutter/material.dart';

class SuperAdminFileMaintenanceModel
    extends FlutterFlowModel<SuperAdminFileMaintenanceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;

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
