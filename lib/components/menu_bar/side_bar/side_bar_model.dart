import '/components/sidebar_tile/sidebar_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_bar_widget.dart' show SideBarWidget;
import 'package:flutter/material.dart';

class SideBarModel extends FlutterFlowModel<SideBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for rsco_dashboard_tile.
  late SidebarTileModel rscoDashboardTileModel;
  // Model for editOrganization.
  late SidebarTileModel editOrganizationModel;
  // Model for members.
  late SidebarTileModel membersModel;
  // Model for events.
  late SidebarTileModel eventsModel;
  // Model for forms.
  late SidebarTileModel formsModel;
  // Model for Reports.
  late SidebarTileModel reportsModel;

  @override
  void initState(BuildContext context) {
    rscoDashboardTileModel = createModel(context, () => SidebarTileModel());
    editOrganizationModel = createModel(context, () => SidebarTileModel());
    membersModel = createModel(context, () => SidebarTileModel());
    eventsModel = createModel(context, () => SidebarTileModel());
    formsModel = createModel(context, () => SidebarTileModel());
    reportsModel = createModel(context, () => SidebarTileModel());
  }

  @override
  void dispose() {
    rscoDashboardTileModel.dispose();
    editOrganizationModel.dispose();
    membersModel.dispose();
    eventsModel.dispose();
    formsModel.dispose();
    reportsModel.dispose();
  }
}
