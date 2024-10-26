import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? AuthRedirectWidget() : AuthSignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? AuthRedirectWidget()
              : AuthSignInWidget(),
        ),
        FFRoute(
          name: 'super_admin_dashboard',
          path: '/superAdminDashboard',
          requireAuth: true,
          builder: (context, params) => SuperAdminDashboardWidget(),
        ),
        FFRoute(
          name: 'our_team',
          path: '/ourTeam',
          requireAuth: true,
          builder: (context, params) => OurTeamWidget(),
        ),
        FFRoute(
          name: 'auth_sign_in',
          path: '/authSignIn',
          builder: (context, params) => AuthSignInWidget(),
        ),
        FFRoute(
          name: 'about_app',
          path: '/aboutApp',
          requireAuth: true,
          builder: (context, params) => AboutAppWidget(),
        ),
        FFRoute(
          name: 'privacy_statement',
          path: '/privacyStatement',
          builder: (context, params) => PrivacyStatementWidget(),
        ),
        FFRoute(
          name: 'auth_sign_up',
          path: '/authSignUp',
          builder: (context, params) => AuthSignUpWidget(),
        ),
        FFRoute(
          name: 'auth_verify_phone',
          path: '/authVerifyPhone',
          requireAuth: true,
          builder: (context, params) => AuthVerifyPhoneWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'terms',
          path: '/terms',
          builder: (context, params) => TermsWidget(),
        ),
        FFRoute(
          name: 'onboard_one',
          path: '/onboardOne',
          requireAuth: true,
          builder: (context, params) => OnboardOneWidget(),
        ),
        FFRoute(
          name: 'onboard_two',
          path: '/onboardTwo',
          requireAuth: true,
          builder: (context, params) => OnboardTwoWidget(
            firstName: params.getParam(
              'firstName',
              ParamType.String,
            ),
            middleName: params.getParam(
              'middleName',
              ParamType.String,
            ),
            lastName: params.getParam(
              'lastName',
              ParamType.String,
            ),
            suffixName: params.getParam(
              'suffixName',
              ParamType.String,
            ),
            civilStatus: params.getParam(
              'civilStatus',
              ParamType.String,
            ),
            sex: params.getParam(
              'sex',
              ParamType.String,
            ),
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
            birthDate: params.getParam(
              'birthDate',
              ParamType.DateTime,
            ),
            citizenship: params.getParam(
              'citizenship',
              ParamType.String,
            ),
            religion: params.getParam(
              'religion',
              ParamType.String,
            ),
            houseNumber: params.getParam(
              'houseNumber',
              ParamType.String,
            ),
            streetName: params.getParam(
              'streetName',
              ParamType.String,
            ),
            barangay: params.getParam(
              'barangay',
              ParamType.String,
            ),
            municipality: params.getParam(
              'municipality',
              ParamType.String,
            ),
            province: params.getParam(
              'province',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'onboard_three',
          path: '/onboardThree',
          requireAuth: true,
          builder: (context, params) => OnboardThreeWidget(
            firstName: params.getParam(
              'firstName',
              ParamType.String,
            ),
            middleName: params.getParam(
              'middleName',
              ParamType.String,
            ),
            lastName: params.getParam(
              'lastName',
              ParamType.String,
            ),
            suffixName: params.getParam(
              'suffixName',
              ParamType.String,
            ),
            civilStatus: params.getParam(
              'civilStatus',
              ParamType.String,
            ),
            sex: params.getParam(
              'sex',
              ParamType.String,
            ),
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
            birthdate: params.getParam(
              'birthdate',
              ParamType.DateTime,
            ),
            citizenship: params.getParam(
              'citizenship',
              ParamType.String,
            ),
            religion: params.getParam(
              'religion',
              ParamType.String,
            ),
            houseNumber: params.getParam(
              'houseNumber',
              ParamType.String,
            ),
            streetName: params.getParam(
              'streetName',
              ParamType.String,
            ),
            barangay: params.getParam(
              'barangay',
              ParamType.String,
            ),
            municipality: params.getParam(
              'municipality',
              ParamType.String,
            ),
            province: params.getParam(
              'province',
              ParamType.String,
            ),
            school: params.getParam(
              'school',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['schools'],
            ),
            department: params.getParam(
              'department',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['programs'],
            ),
            section: params.getParam(
              'section',
              ParamType.String,
            ),
            idNumber: params.getParam(
              'idNumber',
              ParamType.String,
            ),
            role: params.getParam(
              'role',
              ParamType.String,
            ),
            honorifics: params.getParam(
              'honorifics',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'auth_verify_email',
          path: '/authVerifyEmail',
          builder: (context, params) => AuthVerifyEmailWidget(),
        ),
        FFRoute(
          name: 'auth_forgot_password',
          path: '/authForgotPassword',
          builder: (context, params) => AuthForgotPasswordWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'super_admin_file_maintenance',
          path: '/superAdminFileMaintenance',
          requireAuth: true,
          builder: (context, params) => SuperAdminFileMaintenanceWidget(),
        ),
        FFRoute(
          name: 'maintenance_school',
          path: '/maintenanceSchool',
          requireAuth: true,
          builder: (context, params) => MaintenanceSchoolWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            schoolName: params.getParam(
              'schoolName',
              ParamType.String,
            ),
            schoolNickname: params.getParam(
              'schoolNickname',
              ParamType.String,
            ),
            schoolDean: params.getParam(
              'schoolDean',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            schoolDescription: params.getParam(
              'schoolDescription',
              ParamType.String,
            ),
            schoolRef: params.getParam(
              'schoolRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['schools'],
            ),
          ),
        ),
        FFRoute(
          name: 'maintenance_user_roles',
          path: '/maintenanceUserRoles',
          requireAuth: true,
          builder: (context, params) => MaintenanceUserRolesWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            roleName: params.getParam(
              'roleName',
              ParamType.String,
            ),
            roleNickname: params.getParam(
              'roleNickname',
              ParamType.String,
            ),
            roleDescription: params.getParam(
              'roleDescription',
              ParamType.String,
            ),
            roleReference: params.getParam(
              'roleReference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['roles'],
            ),
            roleSettings: params.getParam(
              'roleSettings',
              ParamType.DataStruct,
              isList: false,
              structBuilder: UserSettingsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'view_users',
          path: '/viewUsers',
          requireAuth: true,
          builder: (context, params) => ViewUsersWidget(),
        ),
        FFRoute(
          name: 'view_user_roles',
          path: '/viewUserRoles',
          requireAuth: true,
          builder: (context, params) => ViewUserRolesWidget(),
        ),
        FFRoute(
          name: 'maintenance_users',
          path: '/maintenanceUsers',
          requireAuth: true,
          asyncParams: {
            'userDoc': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => MaintenanceUsersWidget(
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'view_school',
          path: '/viewSchool',
          requireAuth: true,
          builder: (context, params) => ViewSchoolWidget(),
        ),
        FFRoute(
          name: 'dashboard',
          path: '/dashboard',
          requireAuth: true,
          builder: (context, params) => DashboardWidget(),
        ),
        FFRoute(
          name: 'dashboard_facility',
          path: '/dashboardFacility',
          requireAuth: true,
          builder: (context, params) => DashboardFacilityWidget(),
        ),
        FFRoute(
          name: 'maintenance_programs',
          path: '/maintenancePrograms',
          requireAuth: true,
          builder: (context, params) => MaintenanceProgramsWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            programName: params.getParam(
              'programName',
              ParamType.String,
            ),
            programNickname: params.getParam(
              'programNickname',
              ParamType.String,
            ),
            programChair: params.getParam(
              'programChair',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            programDescription: params.getParam(
              'programDescription',
              ParamType.String,
            ),
            programRef: params.getParam(
              'programRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['programs'],
            ),
            schoolUnder: params.getParam(
              'schoolUnder',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['schools'],
            ),
          ),
        ),
        FFRoute(
          name: 'view_programs',
          path: '/viewPrograms',
          requireAuth: true,
          builder: (context, params) => ViewProgramsWidget(),
        ),
        FFRoute(
          name: 'maintenance_organizations',
          path: '/maintenanceOrganizations',
          requireAuth: true,
          builder: (context, params) => MaintenanceOrganizationsWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            orgCode: params.getParam(
              'orgCode',
              ParamType.String,
            ),
            orgName: params.getParam(
              'orgName',
              ParamType.String,
            ),
            orgNickname: params.getParam(
              'orgNickname',
              ParamType.String,
            ),
            orgFounder: params.getParam(
              'orgFounder',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            orgPurpose: params.getParam(
              'orgPurpose',
              ParamType.String,
            ),
            orgType: params.getParam(
              'orgType',
              ParamType.String,
            ),
            orgScope: params.getParam(
              'orgScope',
              ParamType.String,
            ),
            orgAdviser: params.getParam(
              'orgAdviser',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
            logo: params.getParam(
              'logo',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'view_organizations',
          path: '/viewOrganizations',
          requireAuth: true,
          builder: (context, params) => ViewOrganizationsWidget(),
        ),
        FFRoute(
          name: 'view_office',
          path: '/viewOffice',
          requireAuth: true,
          builder: (context, params) => ViewOfficeWidget(),
        ),
        FFRoute(
          name: 'maintenance_office',
          path: '/maintenanceOffice',
          requireAuth: true,
          builder: (context, params) => MaintenanceOfficeWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            officeName: params.getParam(
              'officeName',
              ParamType.String,
            ),
            officeNickname: params.getParam(
              'officeNickname',
              ParamType.String,
            ),
            officeDescription: params.getParam(
              'officeDescription',
              ParamType.String,
            ),
            officeRef: params.getParam(
              'officeRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['office'],
            ),
            officeHead: params.getParam(
              'officeHead',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'view_facility_type',
          path: '/viewFacilityType',
          requireAuth: true,
          builder: (context, params) => ViewFacilityTypeWidget(),
        ),
        FFRoute(
          name: 'maintenance_facility_type',
          path: '/maintenanceFacilityType',
          requireAuth: true,
          builder: (context, params) => MaintenanceFacilityTypeWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            facilityName: params.getParam(
              'facilityName',
              ParamType.String,
            ),
            facilityNickname: params.getParam(
              'facilityNickname',
              ParamType.String,
            ),
            facilityDescription: params.getParam(
              'facilityDescription',
              ParamType.String,
            ),
            facilityReference: params.getParam(
              'facilityReference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['facility_types'],
            ),
          ),
        ),
        FFRoute(
          name: 'view_rooms',
          path: '/viewRooms',
          requireAuth: true,
          builder: (context, params) => ViewRoomsWidget(),
        ),
        FFRoute(
          name: 'maintenance_rooms',
          path: '/maintenanceRooms',
          requireAuth: true,
          builder: (context, params) => MaintenanceRoomsWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            roomNumber: params.getParam(
              'roomNumber',
              ParamType.String,
            ),
            roomName: params.getParam(
              'roomName',
              ParamType.String,
            ),
            roomDesignation: params.getParam(
              'roomDesignation',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['office'],
            ),
            roomFacilityType: params.getParam(
              'roomFacilityType',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['facility_types'],
            ),
            roomRef: params.getParam(
              'roomRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['rooms'],
            ),
            roomMaxCapacity: params.getParam(
              'roomMaxCapacity',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'view_equipment',
          path: '/viewEquipment',
          requireAuth: true,
          builder: (context, params) => ViewEquipmentWidget(),
        ),
        FFRoute(
          name: 'maintenance_equipment',
          path: '/maintenanceEquipment',
          requireAuth: true,
          builder: (context, params) => MaintenanceEquipmentWidget(
            isNew: params.getParam(
              'isNew',
              ParamType.bool,
            ),
            equipmentName: params.getParam(
              'equipmentName',
              ParamType.String,
            ),
            equipmentTag: params.getParam(
              'equipmentTag',
              ParamType.String,
            ),
            roomRef: params.getParam(
              'roomRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['rooms'],
            ),
            equipmentRef: params.getParam(
              'equipmentRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['equipments'],
            ),
            equipmentUnit: params.getParam(
              'equipmentUnit',
              ParamType.String,
            ),
            equipmentValue: params.getParam(
              'equipmentValue',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'change_password',
          path: '/changePassword',
          requireAuth: true,
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'event_management',
          path: '/eventManagement',
          requireAuth: true,
          builder: (context, params) => EventManagementWidget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'rsco_dashboard',
          path: '/rscoDashboard',
          requireAuth: true,
          builder: (context, params) => RscoDashboardWidget(
            org: params.getParam(
              'org',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'event_profile',
          path: '/eventProfile',
          requireAuth: true,
          builder: (context, params) => EventProfileWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'ticket_verifier',
          path: '/ticketVerifier',
          requireAuth: true,
          builder: (context, params) => TicketVerifierWidget(),
        ),
        FFRoute(
          name: 'org_profile',
          path: '/orgProfile',
          requireAuth: true,
          builder: (context, params) => OrgProfileWidget(
            orgReference: params.getParam(
              'orgReference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'notification',
          path: '/notification',
          requireAuth: true,
          builder: (context, params) => NotificationWidget(),
        ),
        FFRoute(
          name: 'approval_org_applications',
          path: '/approvalOrgApplications',
          builder: (context, params) => ApprovalOrgApplicationsWidget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'auth_redirect',
          path: '/authRedirect',
          requireAuth: true,
          builder: (context, params) => AuthRedirectWidget(),
        ),
        FFRoute(
          name: 'menu',
          path: '/menu',
          requireAuth: true,
          builder: (context, params) => MenuWidget(),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          requireAuth: true,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: 'settings',
          path: '/settings',
          requireAuth: true,
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: 'my_organizations',
          path: '/myOrganizations',
          requireAuth: true,
          builder: (context, params) => MyOrganizationsWidget(),
        ),
        FFRoute(
          name: 'org_application_status',
          path: '/orgApplicationStatus',
          requireAuth: true,
          builder: (context, params) => OrgApplicationStatusWidget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'resources_list',
          path: '/resourcesList',
          requireAuth: true,
          builder: (context, params) => ResourcesListWidget(),
        ),
        FFRoute(
          name: 'resource_viewer',
          path: '/resourceViewer',
          requireAuth: true,
          builder: (context, params) => ResourceViewerWidget(
            resourceName: params.getParam(
              'resourceName',
              ParamType.String,
            ),
            resourceFile: params.getParam(
              'resourceFile',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'admin_resources',
          path: '/adminResources',
          requireAuth: true,
          builder: (context, params) => AdminResourcesWidget(),
        ),
        FFRoute(
          name: 'admin_manage_orgs',
          path: '/adminManageOrgs',
          requireAuth: true,
          builder: (context, params) => AdminManageOrgsWidget(),
        ),
        FFRoute(
          name: 'org_revision',
          path: '/orgRevision',
          requireAuth: true,
          builder: (context, params) => OrgRevisionWidget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'a_fmo_dashboard',
          path: '/aFmoDashboard',
          requireAuth: true,
          builder: (context, params) => AFmoDashboardWidget(),
        ),
        FFRoute(
          name: 'event_proposal_status',
          path: '/eventProposalStatus',
          requireAuth: true,
          builder: (context, params) => EventProposalStatusWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'approval_event_proposal',
          path: '/approvalEventProposal',
          requireAuth: true,
          builder: (context, params) => ApprovalEventProposalWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'admin_manage_event',
          path: '/adminManageEvent',
          requireAuth: true,
          builder: (context, params) => AdminManageEventWidget(),
        ),
        FFRoute(
          name: 'event_proposal_revision',
          path: '/eventProposalRevision',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventProposalRevisionWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'calendar_trial',
          path: '/calendarTrial',
          requireAuth: true,
          builder: (context, params) => CalendarTrialWidget(),
        ),
        FFRoute(
          name: 'auth_verify_role',
          path: '/authVerifyRole',
          requireAuth: true,
          builder: (context, params) => AuthVerifyRoleWidget(),
        ),
        FFRoute(
          name: 'a_calendar',
          path: '/aCalendar',
          requireAuth: true,
          builder: (context, params) => ACalendarWidget(),
        ),
        FFRoute(
          name: 'event_proposal_step_1',
          path: '/eventProposalStep1',
          requireAuth: true,
          builder: (context, params) => EventProposalStep1Widget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'admin_notif_send',
          path: '/adminNotifSend',
          requireAuth: true,
          builder: (context, params) => AdminNotifSendWidget(),
        ),
        FFRoute(
          name: 'event_proposal_step_2',
          path: '/eventProposalStep2',
          requireAuth: true,
          builder: (context, params) => EventProposalStep2Widget(
            isOnline: params.getParam(
              'isOnline',
              ParamType.bool,
            ),
            isCampus: params.getParam(
              'isCampus',
              ParamType.bool,
            ),
            maxParticipants: params.getParam(
              'maxParticipants',
              ParamType.int,
            ),
            startDateTime: params.getParam(
              'startDateTime',
              ParamType.DateTime,
            ),
            endDateTime: params.getParam(
              'endDateTime',
              ParamType.DateTime,
            ),
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'event_proposal_step_4_draft',
          path: '/eventProposalStep4Draft',
          requireAuth: true,
          builder: (context, params) => EventProposalStep4DraftWidget(),
        ),
        FFRoute(
          name: 'form_and_reservations',
          path: '/formAndReservations',
          requireAuth: true,
          builder: (context, params) => FormAndReservationsWidget(),
        ),
        FFRoute(
          name: 'b_form_and_reservations_gatepass',
          path: '/bFormAndReservationsGatepass',
          requireAuth: true,
          builder: (context, params) => BFormAndReservationsGatepassWidget(),
        ),
        FFRoute(
          name: 'b_form_facility_reservation',
          path: '/bFormFacilityReservation',
          requireAuth: true,
          builder: (context, params) => BFormFacilityReservationWidget(),
        ),
        FFRoute(
          name: 'event_proposal_step_3',
          path: '/eventProposalStep3',
          requireAuth: true,
          builder: (context, params) => EventProposalStep3Widget(
            isOnline: params.getParam(
              'isOnline',
              ParamType.bool,
            ),
            isCampus: params.getParam(
              'isCampus',
              ParamType.bool,
            ),
            maxParticipants: params.getParam(
              'maxParticipants',
              ParamType.int,
            ),
            startDateTime: params.getParam(
              'startDateTime',
              ParamType.DateTime,
            ),
            endDateTime: params.getParam(
              'endDateTime',
              ParamType.DateTime,
            ),
            onlinePlatform: params.getParam(
              'onlinePlatform',
              ParamType.String,
            ),
            onlineLink: params.getParam(
              'onlineLink',
              ParamType.String,
            ),
            room: params.getParam(
              'room',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['rooms'],
            ),
            outsideLocation: params.getParam(
              'outsideLocation',
              ParamType.FFPlace,
            ),
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'event_proposal_step_2_InsideFacility',
          path: '/eventProposalStep2InsideFacility',
          requireAuth: true,
          builder: (context, params) => EventProposalStep2InsideFacilityWidget(
            isOnline: params.getParam(
              'isOnline',
              ParamType.bool,
            ),
            isCampus: params.getParam(
              'isCampus',
              ParamType.bool,
            ),
            maxParticipants: params.getParam(
              'maxParticipants',
              ParamType.int,
            ),
            startDateTime: params.getParam(
              'startDateTime',
              ParamType.DateTime,
            ),
            endDateTime: params.getParam(
              'endDateTime',
              ParamType.DateTime,
            ),
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'event_proposal_step_2_OutsideLocation',
          path: '/eventProposalStep2OutsideLocation',
          requireAuth: true,
          builder: (context, params) => EventProposalStep2OutsideLocationWidget(
            isOnline: params.getParam(
              'isOnline',
              ParamType.bool,
            ),
            isCampus: params.getParam(
              'isCampus',
              ParamType.bool,
            ),
            maxParticipants: params.getParam(
              'maxParticipants',
              ParamType.int,
            ),
            startDateTime: params.getParam(
              'startDateTime',
              ParamType.DateTime,
            ),
            endDateTime: params.getParam(
              'endDateTime',
              ParamType.DateTime,
            ),
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'event_profile_dashboard',
          path: '/eventProfileDashboard',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventProfileDashboardWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'event_guests_all',
          path: '/eventGuestsAll',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventGuestsAllWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'event_check_in_out',
          path: '/eventCheckInOut',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventCheckInOutWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'event_profile_insights',
          path: '/eventProfileInsights',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventProfileInsightsWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'web_viewer',
          path: '/webViewer',
          requireAuth: true,
          builder: (context, params) => WebViewerWidget(
            pageName: params.getParam(
              'pageName',
              ParamType.String,
            ),
            pageLink: params.getParam(
              'pageLink',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'admin_notif_menu',
          path: '/adminNotifMenu',
          requireAuth: true,
          builder: (context, params) => AdminNotifMenuWidget(),
        ),
        FFRoute(
          name: 'feedback',
          path: '/feedback',
          requireAuth: true,
          builder: (context, params) => FeedbackWidget(),
        ),
        FFRoute(
          name: 'admin_feedback',
          path: '/adminFeedback',
          requireAuth: true,
          builder: (context, params) => AdminFeedbackWidget(),
        ),
        FFRoute(
          name: 'admin_feedback_view',
          path: '/adminFeedbackView',
          requireAuth: true,
          builder: (context, params) => AdminFeedbackViewWidget(
            user: params.getParam(
              'user',
              ParamType.String,
            ),
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
            feedbackRef: params.getParam(
              'feedbackRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['feedback'],
            ),
          ),
        ),
        FFRoute(
          name: 'approval_org_applicationCopy',
          path: '/approvalOrgApplicationCopy',
          requireAuth: true,
          builder: (context, params) => ApprovalOrgApplicationCopyWidget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'admin_content_menu',
          path: '/adminContentMenu',
          requireAuth: true,
          builder: (context, params) => AdminContentMenuWidget(),
        ),
        FFRoute(
          name: 'event_search',
          path: '/eventSearch',
          requireAuth: true,
          builder: (context, params) => EventSearchWidget(
            autofocus: params.getParam(
              'autofocus',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'admin_content_create',
          path: '/adminContentCreate',
          requireAuth: true,
          builder: (context, params) => AdminContentCreateWidget(),
        ),
        FFRoute(
          name: 'explore_organization',
          path: '/exploreOrganization',
          requireAuth: true,
          builder: (context, params) => ExploreOrganizationWidget(),
        ),
        FFRoute(
          name: 'content_see_all',
          path: '/contentSeeAll',
          requireAuth: true,
          builder: (context, params) => ContentSeeAllWidget(),
        ),
        FFRoute(
          name: 'content_view',
          path: '/contentView',
          requireAuth: true,
          builder: (context, params) => ContentViewWidget(
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            content: params.getParam(
              'content',
              ParamType.String,
            ),
            postedBy: params.getParam(
              'postedBy',
              ParamType.String,
            ),
            author: params.getParam(
              'author',
              ParamType.String,
            ),
            postedWhen: params.getParam(
              'postedWhen',
              ParamType.DateTime,
            ),
            type: params.getParam(
              'type',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'admin_content_view',
          path: '/adminContentView',
          requireAuth: true,
          builder: (context, params) => AdminContentViewWidget(),
        ),
        FFRoute(
          name: 'user_feedbackCopy',
          path: '/userFeedbackCopy',
          requireAuth: true,
          builder: (context, params) => UserFeedbackCopyWidget(),
        ),
        FFRoute(
          name: 'admin_logs',
          path: '/adminLogs',
          requireAuth: true,
          builder: (context, params) => AdminLogsWidget(),
        ),
        FFRoute(
          name: 'admin_content_edit',
          path: '/adminContentEdit',
          requireAuth: true,
          builder: (context, params) => AdminContentEditWidget(
            contentReference: params.getParam(
              'contentReference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['content'],
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            author: params.getParam(
              'author',
              ParamType.String,
            ),
            type: params.getParam(
              'type',
              ParamType.String,
            ),
            content: params.getParam(
              'content',
              ParamType.String,
            ),
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'event_proposal_create_original',
          path: '/eventProposalCreateOriginal',
          requireAuth: true,
          builder: (context, params) => EventProposalCreateOriginalWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'admin_approval_manage',
          path: '/adminApprovalManage',
          requireAuth: true,
          builder: (context, params) => AdminApprovalManageWidget(),
        ),
        FFRoute(
          name: 'auth_ongoing_maintenance',
          path: '/authOngoingMaintenance',
          requireAuth: true,
          builder: (context, params) => AuthOngoingMaintenanceWidget(),
        ),
        FFRoute(
          name: 'auth_ongoing_update',
          path: '/authOngoingUpdate',
          requireAuth: true,
          builder: (context, params) => AuthOngoingUpdateWidget(),
        ),
        FFRoute(
          name: 'admin_maintenance',
          path: '/adminMaintenance',
          requireAuth: true,
          builder: (context, params) => AdminMaintenanceWidget(),
        ),
        FFRoute(
          name: 'user_cards',
          path: '/userCards',
          requireAuth: true,
          builder: (context, params) => UserCardsWidget(),
        ),
        FFRoute(
          name: 'admin_approval_assign',
          path: '/adminApprovalAssign',
          requireAuth: true,
          builder: (context, params) => AdminApprovalAssignWidget(),
        ),
        FFRoute(
          name: 'services_list',
          path: '/servicesList',
          requireAuth: true,
          builder: (context, params) => ServicesListWidget(),
        ),
        FFRoute(
          name: 'org_members_pending',
          path: '/orgMembersPending',
          requireAuth: true,
          asyncParams: {
            'orgDoc':
                getDoc(['organizations'], OrganizationsRecord.fromSnapshot),
          },
          builder: (context, params) => OrgMembersPendingWidget(
            orgDoc: params.getParam(
              'orgDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'student_top_up',
          path: '/studentTopUp',
          requireAuth: true,
          builder: (context, params) => StudentTopUpWidget(),
        ),
        FFRoute(
          name: 'step_1_nfc_setup',
          path: '/step1NfcSetup',
          requireAuth: true,
          builder: (context, params) => Step1NfcSetupWidget(),
        ),
        FFRoute(
          name: 'org_application',
          path: '/orgApplication',
          requireAuth: true,
          builder: (context, params) => OrgApplicationWidget(),
        ),
        FFRoute(
          name: 'event_profile_feeback',
          path: '/eventProfileFeeback',
          requireAuth: true,
          builder: (context, params) => EventProfileFeebackWidget(),
        ),
        FFRoute(
          name: 'org_edit',
          path: '/orgEdit',
          requireAuth: true,
          asyncParams: {
            'orgdoc':
                getDoc(['organizations'], OrganizationsRecord.fromSnapshot),
          },
          builder: (context, params) => OrgEditWidget(
            orgdoc: params.getParam(
              'orgdoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'org_form_management',
          path: '/orgFormManagement',
          requireAuth: true,
          builder: (context, params) => OrgFormManagementWidget(),
        ),
        FFRoute(
          name: 'org_reports',
          path: '/orgReports',
          requireAuth: true,
          builder: (context, params) => OrgReportsWidget(),
        ),
        FFRoute(
          name: 'admin_approval_offices_menu',
          path: '/adminApprovalOfficesMenu',
          requireAuth: true,
          builder: (context, params) => AdminApprovalOfficesMenuWidget(),
        ),
        FFRoute(
          name: 'admin_approval_offices_create',
          path: '/adminApprovalOfficesCreate',
          requireAuth: true,
          builder: (context, params) => AdminApprovalOfficesCreateWidget(),
        ),
        FFRoute(
          name: 'admin_approval_offices_update',
          path: '/adminApprovalOfficesUpdate',
          requireAuth: true,
          builder: (context, params) => AdminApprovalOfficesUpdateWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            signatorySet: params.getParam<ApprovalSignatoryStruct>(
              'signatorySet',
              ParamType.DataStruct,
              isList: true,
              structBuilder: ApprovalSignatoryStruct.fromSerializableMap,
            ),
            approvalSetReference: params.getParam(
              'approvalSetReference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['approval_sets'],
            ),
          ),
        ),
        FFRoute(
          name: 'admin_approval_assign_static',
          path: '/adminApprovalAssignStatic',
          requireAuth: true,
          builder: (context, params) => AdminApprovalAssignStaticWidget(),
        ),
        FFRoute(
          name: 'admin_approval_offices_update_static',
          path: '/adminApprovalOfficesUpdateStatic',
          requireAuth: true,
          builder: (context, params) => AdminApprovalOfficesUpdateStaticWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            signatorySet: params.getParam<ApprovalSignatoryStruct>(
              'signatorySet',
              ParamType.DataStruct,
              isList: true,
              structBuilder: ApprovalSignatoryStruct.fromSerializableMap,
            ),
            approvalSetReference: params.getParam(
              'approvalSetReference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['approval_sets'],
            ),
          ),
        ),
        FFRoute(
          name: 'user_ID',
          path: '/userID',
          requireAuth: true,
          builder: (context, params) => UserIDWidget(
            isFromMenu: params.getParam(
              'isFromMenu',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'step_2_signature_setup',
          path: '/step2SignatureSetup',
          requireAuth: true,
          builder: (context, params) => Step2SignatureSetupWidget(),
        ),
        FFRoute(
          name: 'org_application_detailed_status',
          path: '/orgApplicationDetailedStatus',
          requireAuth: true,
          builder: (context, params) => OrgApplicationDetailedStatusWidget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'admin_logs_delete',
          path: '/adminLogsDelete',
          requireAuth: true,
          builder: (context, params) => AdminLogsDeleteWidget(),
        ),
        FFRoute(
          name: 'org_members_members',
          path: '/orgMembersMembers',
          requireAuth: true,
          asyncParams: {
            'membersDoc': getDocList(
                ['organizations', 'members'], MembersRecord.fromSnapshot),
            'orgDoc':
                getDoc(['organizations'], OrganizationsRecord.fromSnapshot),
          },
          builder: (context, params) => OrgMembersMembersWidget(
            membersDoc: params.getParam<MembersRecord>(
              'membersDoc',
              ParamType.Document,
              isList: true,
            ),
            orgDoc: params.getParam(
              'orgDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'org_members_officers',
          path: '/orgMembersOfficers',
          requireAuth: true,
          asyncParams: {
            'membersDoc': getDocList(
                ['organizations', 'members'], MembersRecord.fromSnapshot),
            'orgDoc':
                getDoc(['organizations'], OrganizationsRecord.fromSnapshot),
          },
          builder: (context, params) => OrgMembersOfficersWidget(
            membersDoc: params.getParam<MembersRecord>(
              'membersDoc',
              ParamType.Document,
              isList: true,
            ),
            orgDoc: params.getParam(
              'orgDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'approval_org_application',
          path: '/approvalOrgApplication',
          requireAuth: true,
          builder: (context, params) => ApprovalOrgApplicationWidget(
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'FAQs',
          path: '/fAQs',
          requireAuth: true,
          builder: (context, params) => FAQsWidget(),
        ),
        FFRoute(
          name: 'admin_nfc_setup',
          path: '/adminNfcSetup',
          requireAuth: true,
          asyncParams: {
            'userDoc': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => AdminNfcSetupWidget(
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'admin_signature_setup',
          path: '/adminSignatureSetup',
          requireAuth: true,
          asyncParams: {
            'userDoc': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => AdminSignatureSetupWidget(
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'step_3_verify_user_info',
          path: '/step3VerifyUserInfo',
          requireAuth: true,
          builder: (context, params) => Step3VerifyUserInfoWidget(
            signaturePath: params.getParam(
              'signaturePath',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'auth_loading',
          path: '/authLoading',
          requireAuth: true,
          builder: (context, params) => AuthLoadingWidget(
            fromEvent: params.getParam(
              'fromEvent',
              ParamType.bool,
            ),
            orgRef: params.getParam(
              'orgRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'view_users_faculty',
          path: '/viewUsersFaculty',
          requireAuth: true,
          builder: (context, params) => ViewUsersFacultyWidget(),
        ),
        FFRoute(
          name: 'event_proposal_detailed_status',
          path: '/eventProposalDetailedStatus',
          requireAuth: true,
          builder: (context, params) => EventProposalDetailedStatusWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'calendar_version2',
          path: '/calendarVersion2',
          requireAuth: true,
          builder: (context, params) => CalendarVersion2Widget(),
        ),
        FFRoute(
          name: 'event_profile_test',
          path: '/eventProfileTest',
          requireAuth: true,
          builder: (context, params) => EventProfileTestWidget(),
        ),
        FFRoute(
          name: 'photo_viewer',
          path: '/photoViewer',
          requireAuth: true,
          builder: (context, params) => PhotoViewerWidget(
            photoName: params.getParam(
              'photoName',
              ParamType.String,
            ),
            photoLink: params.getParam(
              'photoLink',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'admin_menu',
          path: '/adminMenu',
          requireAuth: true,
          builder: (context, params) => AdminMenuWidget(),
        ),
        FFRoute(
          name: 'ad_draft',
          path: '/adDraft',
          requireAuth: true,
          builder: (context, params) => AdDraftWidget(),
        ),
        FFRoute(
          name: 'org_satisfaction',
          path: '/orgSatisfaction',
          requireAuth: true,
          asyncParams: {
            'orgdoc':
                getDoc(['organizations'], OrganizationsRecord.fromSnapshot),
          },
          builder: (context, params) => OrgSatisfactionWidget(
            orgdoc: params.getParam(
              'orgdoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'SampleCaard',
          path: '/sampleCaard',
          requireAuth: true,
          builder: (context, params) => SampleCaardWidget(),
        ),
        FFRoute(
          name: 'ticketsCopy',
          path: '/ticketsCopy',
          requireAuth: true,
          builder: (context, params) => TicketsCopyWidget(),
        ),
        FFRoute(
          name: 'tickets',
          path: '/tickets',
          requireAuth: true,
          builder: (context, params) => TicketsWidget(),
        ),
        FFRoute(
          name: 'event_guests_going',
          path: '/eventGuestsGoing',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventGuestsGoingWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'event_guests_pending',
          path: '/eventGuestsPending',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventGuestsPendingWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'event_checked_in',
          path: '/eventCheckedIn',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventCheckedInWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'event_guests_all_original',
          path: '/eventGuestsAllOriginal',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventGuestsAllOriginalWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'event_checked_out',
          path: '/eventCheckedOut',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventCheckedOutWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'rsco_dashboard_orig',
          path: '/rscoDashboardOrig',
          requireAuth: true,
          builder: (context, params) => RscoDashboardOrigWidget(
            org: params.getParam(
              'org',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['organizations'],
            ),
          ),
        ),
        FFRoute(
          name: 'auth_logout',
          path: '/authLogout',
          builder: (context, params) => AuthLogoutWidget(),
        ),
        FFRoute(
          name: 'dashboard_marketplace',
          path: '/dashboardMarketplace',
          requireAuth: true,
          builder: (context, params) => DashboardMarketplaceWidget(),
        ),
        FFRoute(
          name: 'productDetails_marketplace',
          path: '/productDetailsMarketplace',
          requireAuth: true,
          asyncParams: {
            'productDoc': getDoc(['products'], ProductsRecord.fromSnapshot),
          },
          builder: (context, params) => ProductDetailsMarketplaceWidget(
            productDoc: params.getParam(
              'productDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'addProduct_marketplace',
          path: '/addProductMarketplace',
          requireAuth: true,
          builder: (context, params) => AddProductMarketplaceWidget(),
        ),
        FFRoute(
          name: 'orderTracker_marketplace',
          path: '/orderTrackerMarketplace',
          requireAuth: true,
          asyncParams: {
            'order': getDoc(['orders'], OrdersRecord.fromSnapshot),
            'product': getDoc(['products'], ProductsRecord.fromSnapshot),
          },
          builder: (context, params) => OrderTrackerMarketplaceWidget(
            order: params.getParam(
              'order',
              ParamType.Document,
            ),
            product: params.getParam(
              'product',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'cart_marketplace',
          path: '/cartMarketplace',
          requireAuth: true,
          builder: (context, params) => CartMarketplaceWidget(),
        ),
        FFRoute(
          name: 'purchase_marketplace',
          path: '/purchaseMarketplace',
          requireAuth: true,
          asyncParams: {
            'order': getDoc(['orders'], OrdersRecord.fromSnapshot),
          },
          builder: (context, params) => PurchaseMarketplaceWidget(
            order: params.getParam(
              'order',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'inventory_marketplace',
          path: '/inventoryMarketplace',
          requireAuth: true,
          builder: (context, params) => InventoryMarketplaceWidget(),
        ),
        FFRoute(
          name: 'updateProduct_marketplace',
          path: '/updateProductMarketplace',
          requireAuth: true,
          builder: (context, params) => UpdateProductMarketplaceWidget(),
        ),
        FFRoute(
          name: 'PasswordChecker',
          path: '/passwordChecker',
          requireAuth: true,
          builder: (context, params) => PasswordCheckerWidget(),
        ),
        FFRoute(
          name: 'user_profile_admin_view',
          path: '/userProfileAdminView',
          requireAuth: true,
          builder: (context, params) => UserProfileAdminViewWidget(),
        ),
        FFRoute(
          name: 'event_edit',
          path: '/eventEdit',
          requireAuth: true,
          asyncParams: {
            'eventDoc': getDoc(['events'], EventsRecord.fromSnapshot),
          },
          builder: (context, params) => EventEditWidget(
            eventDoc: params.getParam(
              'eventDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'dashboard_admin_marketplace',
          path: '/dashboardAdminMarketplace',
          requireAuth: true,
          builder: (context, params) => DashboardAdminMarketplaceWidget(),
        ),
        FFRoute(
          name: 'ticket_design2',
          path: '/ticketDesign2',
          requireAuth: true,
          builder: (context, params) => TicketDesign2Widget(),
        ),
        FFRoute(
          name: 'myOrders_marketplace',
          path: '/myOrdersMarketplace',
          requireAuth: true,
          builder: (context, params) => MyOrdersMarketplaceWidget(),
        ),
        FFRoute(
          name: 'myPendingOrders_admin_marketplace',
          path: '/myPendingOrdersAdminMarketplace',
          requireAuth: true,
          builder: (context, params) => MyPendingOrdersAdminMarketplaceWidget(),
        ),
        FFRoute(
          name: 'update',
          path: '/update',
          requireAuth: true,
          builder: (context, params) => UpdateWidget(),
        ),
        FFRoute(
          name: 'orderView_admin',
          path: '/orderViewAdmin',
          requireAuth: true,
          asyncParams: {
            'order': getDoc(['orders'], OrdersRecord.fromSnapshot),
          },
          builder: (context, params) => OrderViewAdminWidget(
            order: params.getParam(
              'order',
              ParamType.Document,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/authSignIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/SplashScreen_Enhanced.png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 0),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
