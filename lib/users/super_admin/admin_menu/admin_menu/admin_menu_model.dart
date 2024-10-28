import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/super_admin/admin_menu/admin_menu_component/admin_menu_card/admin_menu_card_widget.dart';
import 'admin_menu_widget.dart' show AdminMenuWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminMenuModel extends FlutterFlowModel<AdminMenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for ApprovalManagement.
  late AdminMenuCardModel approvalManagementModel;
  // Model for ContentManagement.
  late AdminMenuCardModel contentManagementModel1;
  // Model for ContentManagement.
  late AdminMenuCardModel contentManagementModel2;
  // Model for FileMaintenance.
  late AdminMenuCardModel fileMaintenanceModel;
  // Model for LogsManagement.
  late AdminMenuCardModel logsManagementModel;
  // Model for MaintenanceManagement.
  late AdminMenuCardModel maintenanceManagementModel;
  // Model for OrganizationManagement.
  late AdminMenuCardModel organizationManagementModel;
  // Model for PushNotificationManagement.
  late AdminMenuCardModel pushNotificationManagementModel;
  // Model for ResourcesManagement.
  late AdminMenuCardModel resourcesManagementModel1;
  // Model for ResourcesManagement.
  late AdminMenuCardModel resourcesManagementModel2;
  // Model for UserManagement.
  late AdminMenuCardModel userManagementModel;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    approvalManagementModel = createModel(context, () => AdminMenuCardModel());
    contentManagementModel1 = createModel(context, () => AdminMenuCardModel());
    contentManagementModel2 = createModel(context, () => AdminMenuCardModel());
    fileMaintenanceModel = createModel(context, () => AdminMenuCardModel());
    logsManagementModel = createModel(context, () => AdminMenuCardModel());
    maintenanceManagementModel =
        createModel(context, () => AdminMenuCardModel());
    organizationManagementModel =
        createModel(context, () => AdminMenuCardModel());
    pushNotificationManagementModel =
        createModel(context, () => AdminMenuCardModel());
    resourcesManagementModel1 =
        createModel(context, () => AdminMenuCardModel());
    resourcesManagementModel2 =
        createModel(context, () => AdminMenuCardModel());
    userManagementModel = createModel(context, () => AdminMenuCardModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    approvalManagementModel.dispose();
    contentManagementModel1.dispose();
    contentManagementModel2.dispose();
    fileMaintenanceModel.dispose();
    logsManagementModel.dispose();
    maintenanceManagementModel.dispose();
    organizationManagementModel.dispose();
    pushNotificationManagementModel.dispose();
    resourcesManagementModel1.dispose();
    resourcesManagementModel2.dispose();
    userManagementModel.dispose();
  }
}
