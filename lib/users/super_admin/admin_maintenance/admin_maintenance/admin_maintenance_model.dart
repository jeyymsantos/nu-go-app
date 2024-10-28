import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_maintenance_widget.dart' show AdminMaintenanceWidget;
import 'package:flutter/material.dart';

class AdminMaintenanceModel extends FlutterFlowModel<AdminMaintenanceWidget> {
  ///  Local state fields for this page.

  bool hidden = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in admin_maintenance widget.
  DefaultsRecord? isMaintenance;
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for admin_maintenance_mdoe widget.
  bool? adminMaintenanceMdoeValue;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmMaintenance;

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
