import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/super_admin/admin_menu/admin_menu_component/admin_menu_card/admin_menu_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_menu_model.dart';
export 'admin_menu_model.dart';

class AdminMenuWidget extends StatefulWidget {
  const AdminMenuWidget({super.key});

  @override
  State<AdminMenuWidget> createState() => _AdminMenuWidgetState();
}

class _AdminMenuWidgetState extends State<AdminMenuWidget> {
  late AdminMenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminMenuModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'admin_menu'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      builder: (context) => FutureBuilder<List<RolesRecord>>(
        future: queryRolesRecordOnce(
          queryBuilder: (rolesRecord) => rolesRecord.where(
            'role_name',
            isEqualTo: valueOrDefault(currentUserDocument?.role, ''),
          ),
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Scaffold(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitChasingDots(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 50.0,
                  ),
                ),
              ),
            );
          }
          List<RolesRecord> adminMenuRolesRecordList = snapshot.data!;
          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final adminMenuRolesRecord = adminMenuRolesRecordList.isNotEmpty
              ? adminMenuRolesRecordList.first
              : null;

          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SafeArea(
                top: true,
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: wrapWithModel(
                          model: _model.titleHeaderComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: TitleHeaderComponentWidget(
                            titleText: 'Admin Menu',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Admin Management',
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        'This control panel allows you to modify key aspects of the app.',
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.4,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              if ((adminMenuRolesRecord
                                          ?.roleAccess?.toApprovalManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_ApprovalManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'ApprovalManagement_navigate_to');

                                      context.pushNamed(
                                          'admin_approval_assign_static');
                                    },
                                    child: wrapWithModel(
                                      model: _model.approvalManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kstatusUp,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'Approval Management',
                                        moduleDescription:
                                            'Manage approval sets that can be used in certain modules.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_up,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'High Access',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord
                                          ?.roleAccess?.toContentManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_PAGE_ContentManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'ContentManagement_navigate_to');

                                      context.pushNamed('admin_content_menu');
                                    },
                                    child: wrapWithModel(
                                      model: _model.contentManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kimage4,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'Content Management',
                                        moduleDescription:
                                            'Manage and publish announcement, news and updates to all users.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_neutral,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'Moderate Access',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord
                                          ?.roleAccess?.toFeedbackManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_FeedbackManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'FeedbackManagement_navigate_to');

                                      context.pushNamed('admin_feedback');
                                    },
                                    child: wrapWithModel(
                                      model: _model.feedbackManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kmessages4,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'Feedback Management',
                                        moduleDescription:
                                            'View feedbacks received from users.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_neutral_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'Moderate Access',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord
                                          ?.roleAccess?.toFileMaintenance ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_PAGE_FileMaintenance_ON_TAP');
                                      logFirebaseEvent(
                                          'FileMaintenance_navigate_to');

                                      context.pushNamed(
                                          'super_admin_file_maintenance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.fileMaintenanceModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kfolderOpen,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'File Maintenance',
                                        moduleDescription:
                                            'Modules involving management of internal usage of the application.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_up,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'High Access',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord
                                          ?.roleAccess?.toLogsManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_PAGE_LogsManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'LogsManagement_navigate_to');

                                      context.pushNamed('admin_logs');
                                    },
                                    child: wrapWithModel(
                                      model: _model.logsManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kflash,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'Logs\nManagement',
                                        moduleDescription:
                                            'View any changes and updates being made in the application.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_up,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'High Access',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord?.roleAccess
                                          ?.toMaintenanceManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_MaintenanceManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'MaintenanceManagement_navigate_to');

                                      context.pushNamed('admin_maintenance');
                                    },
                                    child: wrapWithModel(
                                      model: _model.maintenanceManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kdcube,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'Maintenance Management',
                                        moduleDescription:
                                            'Turn on maintenance mode to hold users from using the app.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_up,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'High Access',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord?.roleAccess
                                          ?.toOrganizationManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_OrganizationManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'OrganizationManagement_navigate_to');

                                      context.pushNamed('view_organizations');
                                    },
                                    child: wrapWithModel(
                                      model: _model.organizationManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kpeople4,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'Organization Management',
                                        moduleDescription:
                                            'Manage the Recognized Student Council & Organizations using the app.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_up,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'Moderate Access',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord?.roleAccess
                                          ?.toPushNotificiationManamgement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_PushNotificationManagement_ON');
                                      logFirebaseEvent(
                                          'PushNotificationManagement_navigate_to');

                                      context.pushNamed('admin_notif_menu');
                                    },
                                    child: wrapWithModel(
                                      model: _model
                                          .pushNotificationManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kvolumeHigh,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName:
                                            'Push Notification Management',
                                        moduleDescription:
                                            'Manage the push notifications being sent by the application to the users.',
                                        accessLevelIcon: Icon(
                                          FFIcons.kuserTick,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'Restricted',
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord
                                          ?.roleAccess?.toResourcesManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_ResourcesManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'ResourcesManagement_navigate_to');

                                      context.pushNamed('admin_resources');
                                    },
                                    child: wrapWithModel(
                                      model: _model.resourcesManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.klayer,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'Resources Management',
                                        moduleDescription:
                                            'Modify any resources being access by the users.',
                                        accessLevelIcon: Icon(
                                          FFIcons.kuserTick,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'Restrcited',
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((adminMenuRolesRecord
                                          ?.roleAccess?.toUserManagement ==
                                      true) ||
                                  currentUserDocument!.settings.isSuperAdmin)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_PAGE_UserManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'UserManagement_navigate_to');

                                      context.pushNamed('view_users');
                                    },
                                    child: wrapWithModel(
                                      model: _model.userManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: AdminMenuCardWidget(
                                        moduleIcon: Icon(
                                          FFIcons.kuserEdit,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                        moduleName: 'User\nManagement',
                                        moduleDescription:
                                            'Manage user accounts using the application.',
                                        accessLevelIcon: Icon(
                                          Icons.trending_up,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 14.0,
                                        ),
                                        accessLevelLabel: 'High Access',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
