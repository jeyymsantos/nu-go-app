import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/roles_card_with_description/roles_card_with_description_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'maintenance_user_roles_widget.dart' show MaintenanceUserRolesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MaintenanceUserRolesModel
    extends FlutterFlowModel<MaintenanceUserRolesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for role_name_field widget.
  FocusNode? roleNameFieldFocusNode;
  TextEditingController? roleNameFieldTextController;
  String? Function(BuildContext, String?)? roleNameFieldTextControllerValidator;
  String? _roleNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for role_nickname_field widget.
  FocusNode? roleNicknameFieldFocusNode;
  TextEditingController? roleNicknameFieldTextController;
  String? Function(BuildContext, String?)?
      roleNicknameFieldTextControllerValidator;
  // State field(s) for role_description widget.
  FocusNode? roleDescriptionFocusNode;
  TextEditingController? roleDescriptionTextController;
  String? Function(BuildContext, String?)?
      roleDescriptionTextControllerValidator;
  String? _roleDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Model for ApprovalManagement.
  late RolesCardWithDescriptionModel approvalManagementModel;
  // Model for ContentManagement.
  late RolesCardWithDescriptionModel contentManagementModel;
  // Model for FeedbackManagement.
  late RolesCardWithDescriptionModel feedbackManagementModel;
  // Model for FileMaintenance.
  late RolesCardWithDescriptionModel fileMaintenanceModel;
  // Model for LogsManagement.
  late RolesCardWithDescriptionModel logsManagementModel;
  // Model for MaintenenceManagement.
  late RolesCardWithDescriptionModel maintenenceManagementModel;
  // Model for OrganizationManagement.
  late RolesCardWithDescriptionModel organizationManagementModel;
  // Model for PushNotificationManagement.
  late RolesCardWithDescriptionModel pushNotificationManagementModel;
  // Model for Reports.
  late RolesCardWithDescriptionModel reportsModel;
  // Model for ResourcesManagement.
  late RolesCardWithDescriptionModel resourcesManagementModel;
  // Model for UserManagement.
  late RolesCardWithDescriptionModel userManagementModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmRole;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    roleNameFieldTextControllerValidator =
        _roleNameFieldTextControllerValidator;
    roleDescriptionTextControllerValidator =
        _roleDescriptionTextControllerValidator;
    approvalManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    contentManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    feedbackManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    fileMaintenanceModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    logsManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    maintenenceManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    organizationManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    pushNotificationManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    reportsModel = createModel(context, () => RolesCardWithDescriptionModel());
    resourcesManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
    userManagementModel =
        createModel(context, () => RolesCardWithDescriptionModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    roleNameFieldFocusNode?.dispose();
    roleNameFieldTextController?.dispose();

    roleNicknameFieldFocusNode?.dispose();
    roleNicknameFieldTextController?.dispose();

    roleDescriptionFocusNode?.dispose();
    roleDescriptionTextController?.dispose();

    approvalManagementModel.dispose();
    contentManagementModel.dispose();
    feedbackManagementModel.dispose();
    fileMaintenanceModel.dispose();
    logsManagementModel.dispose();
    maintenenceManagementModel.dispose();
    organizationManagementModel.dispose();
    pushNotificationManagementModel.dispose();
    reportsModel.dispose();
    resourcesManagementModel.dispose();
    userManagementModel.dispose();
  }
}
