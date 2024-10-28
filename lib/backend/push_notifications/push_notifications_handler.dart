import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/SplashScreen_Enhanced.png',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'super_admin_dashboard': ParameterData.none(),
  'our_team': ParameterData.none(),
  'auth_sign_in': ParameterData.none(),
  'about_app': ParameterData.none(),
  'privacy_statement': ParameterData.none(),
  'auth_sign_up': ParameterData.none(),
  'auth_verify_phone': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
        },
      ),
  'terms': ParameterData.none(),
  'onboard_one': ParameterData.none(),
  'onboard_two': (data) async => ParameterData(
        allParams: {
          'firstName': getParameter<String>(data, 'firstName'),
          'middleName': getParameter<String>(data, 'middleName'),
          'lastName': getParameter<String>(data, 'lastName'),
          'suffixName': getParameter<String>(data, 'suffixName'),
          'civilStatus': getParameter<String>(data, 'civilStatus'),
          'sex': getParameter<String>(data, 'sex'),
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
          'birthDate': getParameter<DateTime>(data, 'birthDate'),
          'citizenship': getParameter<String>(data, 'citizenship'),
          'religion': getParameter<String>(data, 'religion'),
          'houseNumber': getParameter<String>(data, 'houseNumber'),
          'streetName': getParameter<String>(data, 'streetName'),
          'barangay': getParameter<String>(data, 'barangay'),
          'municipality': getParameter<String>(data, 'municipality'),
          'province': getParameter<String>(data, 'province'),
        },
      ),
  'onboard_three': (data) async => ParameterData(
        allParams: {
          'firstName': getParameter<String>(data, 'firstName'),
          'middleName': getParameter<String>(data, 'middleName'),
          'lastName': getParameter<String>(data, 'lastName'),
          'suffixName': getParameter<String>(data, 'suffixName'),
          'civilStatus': getParameter<String>(data, 'civilStatus'),
          'sex': getParameter<String>(data, 'sex'),
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
          'birthdate': getParameter<DateTime>(data, 'birthdate'),
          'citizenship': getParameter<String>(data, 'citizenship'),
          'religion': getParameter<String>(data, 'religion'),
          'houseNumber': getParameter<String>(data, 'houseNumber'),
          'streetName': getParameter<String>(data, 'streetName'),
          'barangay': getParameter<String>(data, 'barangay'),
          'municipality': getParameter<String>(data, 'municipality'),
          'province': getParameter<String>(data, 'province'),
          'school': getParameter<DocumentReference>(data, 'school'),
          'department': getParameter<DocumentReference>(data, 'department'),
          'section': getParameter<String>(data, 'section'),
          'idNumber': getParameter<String>(data, 'idNumber'),
          'role': getParameter<String>(data, 'role'),
          'honorifics': getParameter<String>(data, 'honorifics'),
        },
      ),
  'auth_verify_email': ParameterData.none(),
  'auth_forgot_password': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
        },
      ),
  'super_admin_file_maintenance': ParameterData.none(),
  'maintenance_school': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'schoolName': getParameter<String>(data, 'schoolName'),
          'schoolNickname': getParameter<String>(data, 'schoolNickname'),
          'schoolDean': getParameter<DocumentReference>(data, 'schoolDean'),
          'schoolDescription': getParameter<String>(data, 'schoolDescription'),
          'schoolRef': getParameter<DocumentReference>(data, 'schoolRef'),
        },
      ),
  'maintenance_user_roles': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'roleName': getParameter<String>(data, 'roleName'),
          'roleNickname': getParameter<String>(data, 'roleNickname'),
          'roleDescription': getParameter<String>(data, 'roleDescription'),
          'roleReference':
              getParameter<DocumentReference>(data, 'roleReference'),
        },
      ),
  'view_users': ParameterData.none(),
  'view_user_roles': ParameterData.none(),
  'maintenance_users': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
  'view_school': ParameterData.none(),
  'dashboard': ParameterData.none(),
  'dashboard_facility': ParameterData.none(),
  'maintenance_programs': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'programName': getParameter<String>(data, 'programName'),
          'programNickname': getParameter<String>(data, 'programNickname'),
          'programChair': getParameter<DocumentReference>(data, 'programChair'),
          'programDescription':
              getParameter<String>(data, 'programDescription'),
          'programRef': getParameter<DocumentReference>(data, 'programRef'),
          'schoolUnder': getParameter<DocumentReference>(data, 'schoolUnder'),
        },
      ),
  'view_programs': ParameterData.none(),
  'maintenance_organizations': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'orgCode': getParameter<String>(data, 'orgCode'),
          'orgName': getParameter<String>(data, 'orgName'),
          'orgNickname': getParameter<String>(data, 'orgNickname'),
          'orgFounder': getParameter<DocumentReference>(data, 'orgFounder'),
          'orgPurpose': getParameter<String>(data, 'orgPurpose'),
          'orgType': getParameter<String>(data, 'orgType'),
          'orgScope': getParameter<String>(data, 'orgScope'),
          'orgAdviser': getParameter<DocumentReference>(data, 'orgAdviser'),
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
          'logo': getParameter<String>(data, 'logo'),
        },
      ),
  'view_organizations': ParameterData.none(),
  'view_office': ParameterData.none(),
  'maintenance_office': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'officeName': getParameter<String>(data, 'officeName'),
          'officeNickname': getParameter<String>(data, 'officeNickname'),
          'officeDescription': getParameter<String>(data, 'officeDescription'),
          'officeRef': getParameter<DocumentReference>(data, 'officeRef'),
          'officeHead': getParameter<DocumentReference>(data, 'officeHead'),
        },
      ),
  'view_facility_type': ParameterData.none(),
  'maintenance_facility_type': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'facilityName': getParameter<String>(data, 'facilityName'),
          'facilityNickname': getParameter<String>(data, 'facilityNickname'),
          'facilityDescription':
              getParameter<String>(data, 'facilityDescription'),
          'facilityReference':
              getParameter<DocumentReference>(data, 'facilityReference'),
        },
      ),
  'view_rooms': ParameterData.none(),
  'maintenance_rooms': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'roomNumber': getParameter<String>(data, 'roomNumber'),
          'roomName': getParameter<String>(data, 'roomName'),
          'roomDesignation':
              getParameter<DocumentReference>(data, 'roomDesignation'),
          'roomFacilityType':
              getParameter<DocumentReference>(data, 'roomFacilityType'),
          'roomRef': getParameter<DocumentReference>(data, 'roomRef'),
          'roomMaxCapacity': getParameter<int>(data, 'roomMaxCapacity'),
        },
      ),
  'view_equipment': ParameterData.none(),
  'maintenance_equipment': (data) async => ParameterData(
        allParams: {
          'isNew': getParameter<bool>(data, 'isNew'),
          'equipmentName': getParameter<String>(data, 'equipmentName'),
          'equipmentTag': getParameter<String>(data, 'equipmentTag'),
          'roomRef': getParameter<DocumentReference>(data, 'roomRef'),
          'equipmentRef': getParameter<DocumentReference>(data, 'equipmentRef'),
          'equipmentUnit': getParameter<String>(data, 'equipmentUnit'),
          'equipmentValue': getParameter<int>(data, 'equipmentValue'),
        },
      ),
  'change_password': ParameterData.none(),
  'event_management': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'rsco_dashboard': (data) async => ParameterData(
        allParams: {
          'org': getParameter<DocumentReference>(data, 'org'),
        },
      ),
  'event_profile': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'ticket_verifier': ParameterData.none(),
  'org_profile': (data) async => ParameterData(
        allParams: {
          'orgReference': getParameter<DocumentReference>(data, 'orgReference'),
        },
      ),
  'notification': ParameterData.none(),
  'approval_org_applications': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'auth_redirect': ParameterData.none(),
  'menu': ParameterData.none(),
  'profile': ParameterData.none(),
  'settings': ParameterData.none(),
  'my_organizations': ParameterData.none(),
  'org_application_status': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'resources_list': ParameterData.none(),
  'resource_viewer': (data) async => ParameterData(
        allParams: {
          'resourceName': getParameter<String>(data, 'resourceName'),
          'resourceFile': getParameter<String>(data, 'resourceFile'),
        },
      ),
  'admin_resources': ParameterData.none(),
  'admin_manage_orgs': ParameterData.none(),
  'org_revision': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'a_fmo_dashboard': ParameterData.none(),
  'event_proposal_status': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'approval_event_proposal': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'admin_manage_event': ParameterData.none(),
  'event_proposal_revision': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'calendar_trial': ParameterData.none(),
  'auth_verify_role': ParameterData.none(),
  'a_calendar': ParameterData.none(),
  'event_proposal_step_1': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'admin_notif_send': ParameterData.none(),
  'event_proposal_step_2': (data) async => ParameterData(
        allParams: {
          'isOnline': getParameter<bool>(data, 'isOnline'),
          'isCampus': getParameter<bool>(data, 'isCampus'),
          'maxParticipants': getParameter<int>(data, 'maxParticipants'),
          'startDateTime': getParameter<DateTime>(data, 'startDateTime'),
          'endDateTime': getParameter<DateTime>(data, 'endDateTime'),
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'event_proposal_step_4_draft': ParameterData.none(),
  'form_and_reservations': ParameterData.none(),
  'b_form_and_reservations_gatepass': ParameterData.none(),
  'b_form_facility_reservation': ParameterData.none(),
  'event_proposal_step_3': (data) async => ParameterData(
        allParams: {
          'isOnline': getParameter<bool>(data, 'isOnline'),
          'isCampus': getParameter<bool>(data, 'isCampus'),
          'maxParticipants': getParameter<int>(data, 'maxParticipants'),
          'startDateTime': getParameter<DateTime>(data, 'startDateTime'),
          'endDateTime': getParameter<DateTime>(data, 'endDateTime'),
          'onlinePlatform': getParameter<String>(data, 'onlinePlatform'),
          'onlineLink': getParameter<String>(data, 'onlineLink'),
          'room': getParameter<DocumentReference>(data, 'room'),
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'event_proposal_step_2_InsideFacility': (data) async => ParameterData(
        allParams: {
          'isOnline': getParameter<bool>(data, 'isOnline'),
          'isCampus': getParameter<bool>(data, 'isCampus'),
          'maxParticipants': getParameter<int>(data, 'maxParticipants'),
          'startDateTime': getParameter<DateTime>(data, 'startDateTime'),
          'endDateTime': getParameter<DateTime>(data, 'endDateTime'),
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'event_proposal_step_2_OutsideLocation': (data) async => ParameterData(
        allParams: {
          'isOnline': getParameter<bool>(data, 'isOnline'),
          'isCampus': getParameter<bool>(data, 'isCampus'),
          'maxParticipants': getParameter<int>(data, 'maxParticipants'),
          'startDateTime': getParameter<DateTime>(data, 'startDateTime'),
          'endDateTime': getParameter<DateTime>(data, 'endDateTime'),
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'event_profile_dashboard': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'event_guests_all': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'event_check_in_out': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'event_profile_insights': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'web_viewer': (data) async => ParameterData(
        allParams: {
          'pageName': getParameter<String>(data, 'pageName'),
          'pageLink': getParameter<String>(data, 'pageLink'),
        },
      ),
  'feedback': ParameterData.none(),
  'admin_feedback': ParameterData.none(),
  'admin_feedback_view': (data) async => ParameterData(
        allParams: {
          'user': getParameter<String>(data, 'user'),
          'photo': getParameter<String>(data, 'photo'),
          'feedbackRef': getParameter<DocumentReference>(data, 'feedbackRef'),
        },
      ),
  'approval_org_applicationCopy': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'admin_content_menu': ParameterData.none(),
  'event_search': (data) async => ParameterData(
        allParams: {
          'autofocus': getParameter<bool>(data, 'autofocus'),
        },
      ),
  'admin_content_create': ParameterData.none(),
  'explore_organization': ParameterData.none(),
  'content_see_all': ParameterData.none(),
  'content_view': (data) async => ParameterData(
        allParams: {
          'photo': getParameter<String>(data, 'photo'),
          'title': getParameter<String>(data, 'title'),
          'content': getParameter<String>(data, 'content'),
          'postedBy': getParameter<String>(data, 'postedBy'),
          'author': getParameter<String>(data, 'author'),
          'postedWhen': getParameter<DateTime>(data, 'postedWhen'),
          'type': getParameter<String>(data, 'type'),
        },
      ),
  'admin_content_view': ParameterData.none(),
  'user_feedbackCopy': ParameterData.none(),
  'admin_logs': ParameterData.none(),
  'admin_content_edit': (data) async => ParameterData(
        allParams: {
          'contentReference':
              getParameter<DocumentReference>(data, 'contentReference'),
          'title': getParameter<String>(data, 'title'),
          'author': getParameter<String>(data, 'author'),
          'type': getParameter<String>(data, 'type'),
          'content': getParameter<String>(data, 'content'),
          'photo': getParameter<String>(data, 'photo'),
        },
      ),
  'event_proposal_create_original': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'admin_approval_manage': ParameterData.none(),
  'auth_ongoing_maintenance': ParameterData.none(),
  'auth_ongoing_update': ParameterData.none(),
  'admin_maintenance': ParameterData.none(),
  'user_cards': ParameterData.none(),
  'admin_approval_assign': ParameterData.none(),
  'services_list': ParameterData.none(),
  'org_members_pending': (data) async => ParameterData(
        allParams: {
          'orgDoc': await getDocumentParameter<OrganizationsRecord>(
              data, 'orgDoc', OrganizationsRecord.fromSnapshot),
        },
      ),
  'student_top_up': ParameterData.none(),
  'step_1_nfc_setup': ParameterData.none(),
  'org_application': ParameterData.none(),
  'event_feeback': (data) async => ParameterData(
        allParams: {
          'event': await getDocumentParameter<EventsRecord>(
              data, 'event', EventsRecord.fromSnapshot),
          'eventAttendee': await getDocumentParameter<EventAttendeesRecord>(
              data, 'eventAttendee', EventAttendeesRecord.fromSnapshot),
        },
      ),
  'org_edit': (data) async => ParameterData(
        allParams: {
          'orgdoc': await getDocumentParameter<OrganizationsRecord>(
              data, 'orgdoc', OrganizationsRecord.fromSnapshot),
        },
      ),
  'org_form_management': ParameterData.none(),
  'org_reports': ParameterData.none(),
  'admin_approval_offices_menu': ParameterData.none(),
  'admin_approval_offices_create': ParameterData.none(),
  'admin_approval_offices_update': (data) async => ParameterData(
        allParams: {
          'name': getParameter<String>(data, 'name'),
          'approvalSetReference':
              getParameter<DocumentReference>(data, 'approvalSetReference'),
        },
      ),
  'admin_approval_assign_static': ParameterData.none(),
  'admin_approval_offices_update_static': (data) async => ParameterData(
        allParams: {
          'name': getParameter<String>(data, 'name'),
          'approvalSetReference':
              getParameter<DocumentReference>(data, 'approvalSetReference'),
        },
      ),
  'user_ID': (data) async => ParameterData(
        allParams: {
          'isFromMenu': getParameter<bool>(data, 'isFromMenu'),
        },
      ),
  'step_2_signature_setup': ParameterData.none(),
  'org_application_detailed_status': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'admin_logs_delete': ParameterData.none(),
  'org_members_members': (data) async => ParameterData(
        allParams: {
          'orgDoc': await getDocumentParameter<OrganizationsRecord>(
              data, 'orgDoc', OrganizationsRecord.fromSnapshot),
        },
      ),
  'org_members_officers': (data) async => ParameterData(
        allParams: {
          'orgDoc': await getDocumentParameter<OrganizationsRecord>(
              data, 'orgDoc', OrganizationsRecord.fromSnapshot),
        },
      ),
  'approval_org_application': (data) async => ParameterData(
        allParams: {
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'FAQs': ParameterData.none(),
  'admin_nfc_setup': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
  'admin_signature_setup': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
  'step_3_verify_user_info': (data) async => ParameterData(
        allParams: {
          'signaturePath': getParameter<String>(data, 'signaturePath'),
        },
      ),
  'auth_loading': (data) async => ParameterData(
        allParams: {
          'fromEvent': getParameter<bool>(data, 'fromEvent'),
          'orgRef': getParameter<DocumentReference>(data, 'orgRef'),
        },
      ),
  'view_users_faculty': ParameterData.none(),
  'event_proposal_detailed_status': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'calendar_version2': ParameterData.none(),
  'event_profile_test': ParameterData.none(),
  'photo_viewer': (data) async => ParameterData(
        allParams: {
          'photoName': getParameter<String>(data, 'photoName'),
          'photoLink': getParameter<String>(data, 'photoLink'),
        },
      ),
  'admin_menu': ParameterData.none(),
  'ad_draft': ParameterData.none(),
  'org_satisfaction': (data) async => ParameterData(
        allParams: {
          'orgdoc': await getDocumentParameter<OrganizationsRecord>(
              data, 'orgdoc', OrganizationsRecord.fromSnapshot),
        },
      ),
  'SampleCaard': ParameterData.none(),
  'ticketsCopy': ParameterData.none(),
  'tickets': ParameterData.none(),
  'event_guests_going': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'event_guests_pending': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'event_checked_in': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'event_guests_all_original': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'event_checked_out': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'rsco_dashboard_orig': (data) async => ParameterData(
        allParams: {
          'org': getParameter<DocumentReference>(data, 'org'),
        },
      ),
  'auth_logout': ParameterData.none(),
  'dashboard_marketplace': ParameterData.none(),
  'productDetails_marketplace': (data) async => ParameterData(
        allParams: {
          'productDoc': await getDocumentParameter<ProductsRecord>(
              data, 'productDoc', ProductsRecord.fromSnapshot),
        },
      ),
  'addProduct_marketplace': ParameterData.none(),
  'orderTracker_marketplace': (data) async => ParameterData(
        allParams: {
          'order': await getDocumentParameter<OrdersRecord>(
              data, 'order', OrdersRecord.fromSnapshot),
          'product': await getDocumentParameter<ProductsRecord>(
              data, 'product', ProductsRecord.fromSnapshot),
        },
      ),
  'cart_marketplace': ParameterData.none(),
  'purchase_marketplace': (data) async => ParameterData(
        allParams: {
          'order': await getDocumentParameter<OrdersRecord>(
              data, 'order', OrdersRecord.fromSnapshot),
        },
      ),
  'inventory_marketplace': ParameterData.none(),
  'updateProduct_marketplace': ParameterData.none(),
  'PasswordChecker': ParameterData.none(),
  'view_user': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
  'event_edit': (data) async => ParameterData(
        allParams: {
          'eventDoc': await getDocumentParameter<EventsRecord>(
              data, 'eventDoc', EventsRecord.fromSnapshot),
        },
      ),
  'dashboard_admin_marketplace': ParameterData.none(),
  'ticket_design2': ParameterData.none(),
  'myOrders_marketplace': ParameterData.none(),
  'myPendingOrders_admin_marketplace': ParameterData.none(),
  'update': ParameterData.none(),
  'orderView_admin': (data) async => ParameterData(
        allParams: {
          'order': await getDocumentParameter<OrdersRecord>(
              data, 'order', OrdersRecord.fromSnapshot),
        },
      ),
  'view_userid_admin': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
