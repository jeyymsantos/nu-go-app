import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/users/super_admin/admin_menu/admin_menu_component/admin_menu_card/admin_menu_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: wrapWithModel(
                          model: _model.titleHeaderComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const TitleHeaderComponentWidget(
                            titleText: 'Admin Menu',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if ((adminMenuRolesRecord?.roleAccess
                                            .toApprovalManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Approval Management',
                                        moduleDescription:
                                            'Manage approval sets that can be used in certain modules.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FApproval%20Management.png?alt=media&token=ef521d7f-5cb2-4859-b84a-a1c2c16430ef',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord
                                            ?.roleAccess.toContentManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      model: _model.contentManagementModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Content Management',
                                        moduleDescription:
                                            'Manage and publish announcement, news and updates to all users.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FContent%20Management.png?alt=media&token=343f88b7-c9d2-4843-b9f1-b7dcdc836e6a',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord?.roleAccess
                                            .toFeedbackManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_PAGE_ContentManagement_ON_TAP');
                                      logFirebaseEvent(
                                          'ContentManagement_navigate_to');

                                      context.pushNamed('admin_feedback');
                                    },
                                    child: wrapWithModel(
                                      model: _model.contentManagementModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Feedback Management',
                                        moduleDescription:
                                            'Manage all feedback received from users to improve the app experience.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FFeedback%20Management.png?alt=media&token=b89cb425-5f70-4815-9c8a-176df0f2741f',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord
                                            ?.roleAccess.toFileMaintenance ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'File Maintenance',
                                        moduleDescription:
                                            'Modules involving management of internal usage of the application.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FFiles%20Managewent.png?alt=media&token=fecdc3bf-6647-4fd6-bd84-15643e91c195',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord
                                            ?.roleAccess.toLogsManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Logs Management',
                                        moduleDescription:
                                            'View any changes and updates being made in the application.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FLog%20Management.png?alt=media&token=d88ea9b0-6298-405b-a80b-ab26431df073',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord?.roleAccess
                                            .toMaintenanceManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Maintenance Management',
                                        moduleDescription:
                                            'Turn on maintenance mode to hold users from using the app.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FMaintenance%20Management.png?alt=media&token=9dabb3c3-26fd-4313-ab04-2bdcf79cbbb1',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord?.roleAccess
                                            .toOrganizationManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Organization Management',
                                        moduleDescription:
                                            'Manage the Recognized Student Council & Organizations using the app.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FOrganization%20Management.png?alt=media&token=1f8cdd26-0cde-4122-b905-db7dc84ee2ff',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord?.roleAccess
                                            .toPushNotificiationManamgement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MENU_PushNotificationManagement_ON');
                                      logFirebaseEvent(
                                          'PushNotificationManagement_navigate_to');

                                      context.pushNamed('admin_notif_send');
                                    },
                                    child: wrapWithModel(
                                      model: _model
                                          .pushNotificationManagementModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Send Push Notification',
                                        moduleDescription:
                                            'Manage the push notifications being sent by the application to the users.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FPush%20Notification%20Management.png?alt=media&token=f3266fcd-e5df-4be6-b632-36e4b3f4fa00',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord?.roleAccess
                                            .toResourcesManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'Resources Management',
                                        moduleDescription:
                                            'Modify any resources being access by the users.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FResources%20Manangement.png?alt=media&token=da8e9a38-dec7-48df-bef6-8579647a813d',
                                      ),
                                    ),
                                  ),
                                if ((adminMenuRolesRecord
                                            ?.roleAccess.toUserManagement ==
                                        true) ||
                                    currentUserDocument!.settings.isSuperAdmin)
                                  InkWell(
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
                                      child: const AdminMenuCardWidget(
                                        moduleName: 'User\nManagement',
                                        moduleDescription:
                                            'Manage user accounts using the application.',
                                        imagePath:
                                            'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FIcons%2FUser%20Management.png?alt=media&token=5276ddcb-9dde-4e01-aa22-df3efc706178',
                                      ),
                                    ),
                                  ),
                              ]
                                  .divide(const SizedBox(height: 10.0))
                                  .addToStart(const SizedBox(height: 5.0))
                                  .addToEnd(const SizedBox(height: 5.0)),
                            ),
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
