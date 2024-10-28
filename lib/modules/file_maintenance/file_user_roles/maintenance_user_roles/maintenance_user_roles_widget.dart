import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/roles_card_with_description/roles_card_with_description_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'maintenance_user_roles_model.dart';
export 'maintenance_user_roles_model.dart';

class MaintenanceUserRolesWidget extends StatefulWidget {
  const MaintenanceUserRolesWidget({
    super.key,
    bool? isNew,
    this.roleName,
    this.roleNickname,
    this.roleDescription,
    this.roleReference,
    this.roleSettings,
  }) : isNew = isNew ?? true;

  final bool isNew;
  final String? roleName;
  final String? roleNickname;
  final String? roleDescription;
  final DocumentReference? roleReference;
  final UserSettingsStruct? roleSettings;

  @override
  State<MaintenanceUserRolesWidget> createState() =>
      _MaintenanceUserRolesWidgetState();
}

class _MaintenanceUserRolesWidgetState
    extends State<MaintenanceUserRolesWidget> {
  late MaintenanceUserRolesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenanceUserRolesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'maintenance_user_roles'});
    _model.roleNameFieldTextController ??=
        TextEditingController(text: widget.isNew ? '' : widget.roleName);
    _model.roleNameFieldFocusNode ??= FocusNode();

    _model.roleNicknameFieldTextController ??=
        TextEditingController(text: widget.isNew ? '' : widget.roleNickname);
    _model.roleNicknameFieldFocusNode ??= FocusNode();

    _model.roleDescriptionTextController ??= TextEditingController(
        text: widget.isNew ? '' : widget.roleDescription);
    _model.roleDescriptionFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.titleHeaderComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const TitleHeaderComponentWidget(
                    titleText: 'File Maintenance',
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Roles',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'A specific role that a user can have while using the application.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Illustrations1-Dashboard.png',
                            width: 150.0,
                            height: 118.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.roleNameFieldTextController,
                                    focusNode: _model.roleNameFieldFocusNode,
                                    autofocus: false,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Role Name',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .textBoxBorder,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model
                                        .roleNameFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.roleNicknameFieldTextController,
                                    focusNode:
                                        _model.roleNicknameFieldFocusNode,
                                    autofocus: false,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Role Nickname',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .textBoxBorder,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model
                                        .roleNicknameFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.roleDescriptionTextController,
                                    focusNode: _model.roleDescriptionFocusNode,
                                    autofocus: false,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Role Description',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .textBoxBorder,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          letterSpacing: 0.0,
                                        ),
                                    textAlign: TextAlign.start,
                                    maxLines: 3,
                                    validator: _model
                                        .roleDescriptionTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Setup their Roles ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          const TextSpan(
                                            text:
                                                'by checking the boxes that match each user\'s responsibilities.',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.approvalManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Approval Management',
                                          description:
                                              'Manage approval sets that can be used in certain modules.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toApprovalManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.contentManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Content Management',
                                          description:
                                              'Manage and publish announcement, news and updates to all users.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toContentManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.feedbackManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Feedback Management',
                                          description:
                                              'View feedbacks received from users.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toFeedbackManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.fileMaintenanceModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'File Maintenance',
                                          description:
                                              'Modules involving management of internal usage of the application.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toFileMaintenance
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.logsManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Logs Management',
                                          description:
                                              'View any changes and updates being made in the application.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toLogsManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.maintenenceManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Maintenance Management',
                                          description:
                                              'Turn on maintenance mode to hold users from using the app.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toMaintenanceManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.organizationManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Organization Management',
                                          description:
                                              'Manage the Recognized Student Council & Organizations using the app.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toOrganizationManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model
                                            .pushNotificationManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Push Notification Management',
                                          description:
                                              'Manage the push notifications being sent by the application to the users.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toPushNotificiationManamgement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.resourcesManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'Resources Management',
                                          description:
                                              'Modify any resources being access by the users.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toResourcesManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.userManagementModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: RolesCardWithDescriptionWidget(
                                          title: 'User Management',
                                          description:
                                              'Manage user accounts using the application.',
                                          active: widget.roleSettings != null
                                              ? widget.roleSettings!
                                                  .toUserManagement
                                              : false,
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 15.0)),
                                ),
                                Builder(
                                  builder: (context) => Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 15.0, 20.0, 10.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'MAINTENANCE_USER_ROLES_PAGE_Save_ON_TAP');
                                        logFirebaseEvent('Save_validate_form');
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        logFirebaseEvent('Save_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  const AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          dialogContext)
                                                      .unfocus(),
                                                  child:
                                                      const ConfirmPasswordDialogWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(
                                            () => _model.confirmRole = value));

                                        if (_model.confirmRole!) {
                                          if (widget.isNew == true) {
                                            logFirebaseEvent(
                                                'Save_backend_call');

                                            await RolesRecord.collection
                                                .doc()
                                                .set({
                                              ...createRolesRecordData(
                                                roleName: _model
                                                    .roleNameFieldTextController
                                                    .text,
                                                roleDescription: _model
                                                    .roleDescriptionTextController
                                                    .text,
                                                roleCreatedBy:
                                                    currentUserReference,
                                                roleNickname: _model
                                                    .roleNicknameFieldTextController
                                                    .text,
                                                roleAccess:
                                                    createUserSettingsStruct(
                                                  toContentManagement: _model
                                                      .contentManagementModel
                                                      .checkboxValue,
                                                  toApprovalManagement: _model
                                                      .approvalManagementModel
                                                      .checkboxValue,
                                                  toFeedbackManagement: _model
                                                      .feedbackManagementModel
                                                      .checkboxValue,
                                                  toFileMaintenance: _model
                                                      .fileMaintenanceModel
                                                      .checkboxValue,
                                                  toLogsManagement: _model
                                                      .logsManagementModel
                                                      .checkboxValue,
                                                  toMaintenanceManagement: _model
                                                      .maintenenceManagementModel
                                                      .checkboxValue,
                                                  toOrganizationManagement: _model
                                                      .organizationManagementModel
                                                      .checkboxValue,
                                                  toPushNotificiationManamgement:
                                                      _model
                                                          .pushNotificationManagementModel
                                                          .checkboxValue,
                                                  toResourcesManagement: _model
                                                      .resourcesManagementModel
                                                      .checkboxValue,
                                                  toUserManagement: _model
                                                      .userManagementModel
                                                      .checkboxValue,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'role_created_on': FieldValue
                                                      .serverTimestamp(),
                                                },
                                              ),
                                            });
                                            logFirebaseEvent(
                                                'Save_action_block');
                                            await action_blocks.logs(
                                              context,
                                              type: 'added',
                                              module: 'roles',
                                              doneToName: _model
                                                  .roleNameFieldTextController
                                                  .text,
                                            );
                                          } else {
                                            logFirebaseEvent(
                                                'Save_backend_call');

                                            await widget.roleReference!
                                                .update(createRolesRecordData(
                                              roleName: _model
                                                  .roleNameFieldTextController
                                                  .text,
                                              roleDescription: _model
                                                  .roleDescriptionTextController
                                                  .text,
                                              roleNickname: _model
                                                  .roleNicknameFieldTextController
                                                  .text,
                                              roleAccess:
                                                  createUserSettingsStruct(
                                                toApprovalManagement: _model
                                                    .approvalManagementModel
                                                    .checkboxValue,
                                                toContentManagement: _model
                                                    .contentManagementModel
                                                    .checkboxValue,
                                                toFeedbackManagement: _model
                                                    .feedbackManagementModel
                                                    .checkboxValue,
                                                toFileMaintenance: _model
                                                    .fileMaintenanceModel
                                                    .checkboxValue,
                                                toLogsManagement: _model
                                                    .logsManagementModel
                                                    .checkboxValue,
                                                toMaintenanceManagement: _model
                                                    .maintenenceManagementModel
                                                    .checkboxValue,
                                                toOrganizationManagement: _model
                                                    .organizationManagementModel
                                                    .checkboxValue,
                                                toPushNotificiationManamgement:
                                                    _model
                                                        .pushNotificationManagementModel
                                                        .checkboxValue,
                                                toResourcesManagement: _model
                                                    .resourcesManagementModel
                                                    .checkboxValue,
                                                toUserManagement: _model
                                                    .userManagementModel
                                                    .checkboxValue,
                                                clearUnsetFields: false,
                                              ),
                                            ));
                                            logFirebaseEvent(
                                                'Save_action_block');
                                            await action_blocks.logs(
                                              context,
                                              type: 'updated',
                                              module: 'roles',
                                              doneToName: _model
                                                  .roleNameFieldTextController
                                                  .text,
                                            );
                                          }

                                          logFirebaseEvent('Save_alert_dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: const AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () => FocusScope.of(
                                                            dialogContext)
                                                        .unfocus(),
                                                    child:
                                                        InformationDialogBoxWidget(
                                                      infoDialogTitle: widget
                                                              .isNew
                                                          ? 'New Role Created'
                                                          : 'Existing Role Updated',
                                                      infoDialogMeesage: widget
                                                              .isNew
                                                          ? 'You have successfully saved a new role!'
                                                          : 'You have successfully updated an existing role!',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        } else {
                                          logFirebaseEvent('Save_alert_dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: const AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () => FocusScope.of(
                                                            dialogContext)
                                                        .unfocus(),
                                                    child:
                                                        const InformationDialogBoxWidget(
                                                      infoDialogTitle:
                                                          'Action Cancelled',
                                                      infoDialogMeesage:
                                                          'This action has been cancelled.',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        }

                                        logFirebaseEvent('Save_navigate_back');
                                        context.safePop();

                                        safeSetState(() {});
                                      },
                                      text: widget.isNew ? 'Save' : 'Update',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 15.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
