import '/components/widgets/roles_card_with_description/roles_card_with_description_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'maintenance_user_roles_widget.dart' show MaintenanceUserRolesWidget;
import 'package:flutter/material.dart';

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
  // Model for ResourcesManagement.
  late RolesCardWithDescriptionModel resourcesManagementModel;
  // Model for UserManagement.
  late RolesCardWithDescriptionModel userManagementModel;

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
    resourcesManagementModel.dispose();
    userManagementModel.dispose();
  }
}
