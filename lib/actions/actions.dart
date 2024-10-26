import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future logs(
  BuildContext context, {
  required String? type,
  required String? module,
  required String? doneToName,
  DocumentReference? doneTo,
}) async {
  if (doneToName == 'Reset Password Request') {
    logFirebaseEvent('logs_backend_call');

    await ActivityLogsRecord.collection.doc().set({
      ...createActivityLogsRecordData(
        type: type,
        description:
            '${currentUserDisplayName != null && currentUserDisplayName != '' ? currentUserDisplayName : 'A user'} has ${type} ${doneToName} on ${module} module.',
        module: module,
        doneByRole: valueOrDefault(currentUserDocument?.role, ''),
        doneTo: doneTo,
        doneToName: doneToName,
      ),
      ...mapToFirestore(
        {
          'done_when': FieldValue.serverTimestamp(),
        },
      ),
    });
  } else {
    logFirebaseEvent('logs_backend_call');

    await ActivityLogsRecord.collection.doc().set({
      ...createActivityLogsRecordData(
        type: type,
        description:
            '${currentUserDisplayName != null && currentUserDisplayName != '' ? currentUserDisplayName : 'A user'} has ${type} ${doneToName} on ${module} module.',
        module: module,
        doneBy: currentUserReference,
        doneByRole: valueOrDefault(currentUserDocument?.role, ''),
        doneTo: doneTo,
        doneToName: doneToName,
      ),
      ...mapToFirestore(
        {
          'done_when': FieldValue.serverTimestamp(),
        },
      ),
    });
  }
}

Future adminSignatorySet(
  BuildContext context, {
  required ApprovalSetsRecord? approvalSet,
  required String? adviser,
  required String? status,
}) async {
  ApprovalSetsRecord? approvalSetDoc;
  UsersRecord? adviserResult;
  ProgramsRecord? programChairDoc;
  SchoolsRecord? deanDoc;
  OfficeRecord? officeRef;

  // Start of Signatory List Set Up
  logFirebaseEvent('adminSignatorySet_StartofSignatoryListSe');
  approvalSetDoc =
      await ApprovalSetsRecord.getDocumentOnce(approvalSet!.reference);
  logFirebaseEvent('adminSignatorySet_update_app_state');
  FFAppState().signatorySet =
      approvalSet!.signatories.toList().cast<ApprovalSignatoryStruct>();
  FFAppState().index = 0;
  while (FFAppState().index < FFAppState().signatorySet.length) {
    if (FFAppState().signatorySet[FFAppState().index].approvalRole ==
        'Full-Time Faculty') {
      // Get Adviser
      logFirebaseEvent('adminSignatorySet_GetAdviser');
      adviserResult = await actions.getUserDocument(
        adviser!,
      );
      logFirebaseEvent('adminSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e..approvalUser = adviserResult?.reference,
      );
    } else if (FFAppState().signatorySet[FFAppState().index].approvalRole ==
        'Program Chair') {
      logFirebaseEvent('adminSignatorySet_custom_action');
      programChairDoc = await actions.getProgramDocument(
        currentUserDocument!.student.program!.id,
      );
      logFirebaseEvent('adminSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e..approvalUser = programChairDoc?.programChair,
      );
    } else if (FFAppState().signatorySet[FFAppState().index].approvalRole ==
        'Dean') {
      logFirebaseEvent('adminSignatorySet_custom_action');
      deanDoc = await actions.getSchoolDocument(
        currentUserDocument!.student.school!.id,
      );
      logFirebaseEvent('adminSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e..approvalUser = deanDoc?.schoolDean,
      );
    } else {
      logFirebaseEvent('adminSignatorySet_backend_call');
      officeRef = await OfficeRecord.getDocumentOnce(
          approvalSetDoc!.signatories[FFAppState().index].approvalOffice!);
      logFirebaseEvent('adminSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e
          ..approvalUser = officeRef?.officeHead
          ..approvalOffice = officeRef?.reference,
      );
    }

    logFirebaseEvent('adminSignatorySet_update_app_state');
    FFAppState().updateSignatorySetAtIndex(
      FFAppState().index,
      (e) => e..approvalStatus = '${status}',
    );
    // End of Signatory List Set Up
    logFirebaseEvent('adminSignatorySet_EndofSignatoryListSetU');
    FFAppState().index = FFAppState().index + 1;
  }
}

Future addressLoader(BuildContext context) async {
  ApiCallResponse? provinceOutput;
  ApiCallResponse? barangayOutput;
  ApiCallResponse? cityOutput;

  logFirebaseEvent('addressLoader_backend_call');
  provinceOutput = await AddressGroup.getSpecificProvinceCall.call(
    provinceCode: currentUserDocument?.address?.province,
  );

  logFirebaseEvent('addressLoader_backend_call');
  barangayOutput = await AddressGroup.getSpecificBarangayCall.call(
    barangayCode: currentUserDocument?.address?.barangay,
  );

  logFirebaseEvent('addressLoader_backend_call');
  cityOutput = await AddressGroup.getSpecificCityCall.call(
    cityCode: currentUserDocument?.address?.city,
  );

  logFirebaseEvent('addressLoader_update_app_state');
  FFAppState().address = AddressStruct(
    barangay: AddressGroup.getSpecificBarangayCall.name(
      (barangayOutput?.jsonBody ?? ''),
    ),
    city: AddressGroup.getSpecificCityCall.name(
      (cityOutput?.jsonBody ?? ''),
    ),
    province: AddressGroup.getSpecificProvinceCall.name(
      (provinceOutput?.jsonBody ?? ''),
    ),
  );
}

Future orgSignatorySet(
  BuildContext context, {
  required ApprovalSetsRecord? approvalSet,
  required UsersRecord? adviser,
  required String? status,
  required String? scope,
}) async {
  ApprovalSetsRecord? approvalSetDoc;
  ProgramsRecord? programChairDoc;
  SchoolsRecord? deanDoc;
  OfficeRecord? officeRef;

  // Start of Signatory List Set Up
  logFirebaseEvent('orgSignatorySet_StartofSignatoryListSetU');
  approvalSetDoc =
      await ApprovalSetsRecord.getDocumentOnce(approvalSet!.reference);
  logFirebaseEvent('orgSignatorySet_update_app_state');
  FFAppState().signatorySet =
      approvalSet!.signatories.toList().cast<ApprovalSignatoryStruct>();
  FFAppState().index = 0;
  while (FFAppState().index < FFAppState().signatorySet.length) {
    if (FFAppState().signatorySet[FFAppState().index].approvalRole ==
        'Full-Time Faculty') {
      logFirebaseEvent('orgSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e
          ..approvalUser = adviser?.reference
          ..approvalStatus = status,
      );
    } else if ((FFAppState().signatorySet[FFAppState().index].approvalRole ==
            'Program Chair') &&
        (scope == 'Program-wide')) {
      logFirebaseEvent('orgSignatorySet_custom_action');
      programChairDoc = await actions.getProgramDocument(
        currentUserDocument!.student.program!.id,
      );
      logFirebaseEvent('orgSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e
          ..approvalUser = programChairDoc?.programChair
          ..approvalStatus = status,
      );
    } else if ((FFAppState().signatorySet[FFAppState().index].approvalRole ==
            'Dean') &&
        ((scope == 'Program-wide') || (scope == 'School-wide'))) {
      logFirebaseEvent('orgSignatorySet_custom_action');
      deanDoc = await actions.getSchoolDocument(
        currentUserDocument!.student.school!.id,
      );
      logFirebaseEvent('orgSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e
          ..approvalUser = deanDoc?.schoolDean
          ..approvalStatus = status,
      );
    } else if (FFAppState().signatorySet[FFAppState().index].approvalOffice !=
        null) {
      logFirebaseEvent('orgSignatorySet_backend_call');
      officeRef = await OfficeRecord.getDocumentOnce(
          FFAppState().signatorySet[FFAppState().index].approvalOffice!);
      logFirebaseEvent('orgSignatorySet_update_app_state');
      FFAppState().updateSignatorySetAtIndex(
        FFAppState().index,
        (e) => e
          ..approvalUser = officeRef?.officeHead
          ..approvalOffice = officeRef?.reference
          ..approvalStatus = status,
      );
    } else {
      logFirebaseEvent('orgSignatorySet_update_app_state');
      FFAppState().removeAtIndexFromSignatorySet(FFAppState().index);
      FFAppState().index = FFAppState().index + -1;
    }

    // End of Signatory List Set Up
    logFirebaseEvent('orgSignatorySet_EndofSignatoryListSetUp');
    FFAppState().index = FFAppState().index + 1;
  }
}

Future dynamicApprove(
  BuildContext context, {
  required String? approveWhat,
  required List<ApprovalSignatoryStruct>? approvalList,
  required int? approvalStep,
  DocumentReference? approveOrgRef,
  DocumentReference? approveEventRef,
  required DocumentReference? approveWho,
  required String? approveName,
}) async {
  logFirebaseEvent('dynamicApprove_update_app_state');
  FFAppState().signatorySet =
      approvalList!.toList().cast<ApprovalSignatoryStruct>();
  logFirebaseEvent('dynamicApprove_update_app_state');
  FFAppState().updateSignatorySetAtIndex(
    approvalStep!,
    (e) => e
      ..approvalStatus = 'Approved'
      ..approvalTimestamp = getCurrentTimestamp,
  );
  if (approveOrgRef != null) {
    logFirebaseEvent('dynamicApprove_backend_call');

    await approveOrgRef!.update({
      ...createOrganizationsRecordData(
        status: functions.decrementByOne(approvalList!.length) == approvalStep
            ? 'Approved'
            : 'Pending',
      ),
      ...mapToFirestore(
        {
          'current_approval_step': FieldValue.increment(1),
          'current_approval_signatory': getApprovalSignatoryListFirestoreData(
            FFAppState().signatorySet,
          ),
          'status_last_updated': FieldValue.serverTimestamp(),
        },
      ),
    });
    logFirebaseEvent('dynamicApprove_backend_call');

    await ApplicationRecord.createDoc(approveOrgRef!).set({
      ...createApplicationRecordData(
        message:
            'The request has been processed by ${FFAppState().signatorySet[approvalStep!].approvalRole == 'Full-Time Faculty' ? 'adviser' : FFAppState().signatorySet[approvalStep!].approvalRole}.',
        status: 'Approved',
        schoolAdmin: currentUserReference,
      ),
      ...mapToFirestore(
        {
          'timestamp': FieldValue.serverTimestamp(),
        },
      ),
    });
  } else if (approveEventRef != null) {
    logFirebaseEvent('dynamicApprove_backend_call');

    await approveEventRef!.update({
      ...createEventsRecordData(
        status: functions.decrementByOne(approvalList!.length) == approvalStep
            ? 'Approved'
            : 'Pending',
      ),
      ...mapToFirestore(
        {
          'current_approval_step': FieldValue.increment(1),
          'current_approval_signatory': getApprovalSignatoryListFirestoreData(
            FFAppState().signatorySet,
          ),
          'status_last_updated': FieldValue.serverTimestamp(),
        },
      ),
    });
    logFirebaseEvent('dynamicApprove_backend_call');

    await EventApplicationRecord.createDoc(approveEventRef!).set({
      ...createEventApplicationRecordData(
        message:
            'The request has been processed by ${FFAppState().signatorySet[approvalStep!].approvalRole == 'Full-Time Faculty' ? 'adviser' : FFAppState().signatorySet[approvalStep!].approvalRole}.',
        status: 'Approved',
        schoolAdmin: currentUserReference,
      ),
      ...mapToFirestore(
        {
          'timestamp': FieldValue.serverTimestamp(),
        },
      ),
    });
  } else {
    return;
  }

  logFirebaseEvent('dynamicApprove_action_block');
  await action_blocks.logs(
    context,
    type: 'approved',
    module: approveWhat,
    doneToName: 'the request',
  );
  logFirebaseEvent('dynamicApprove_action_block');
  await action_blocks.triggerAppNotification(
    context,
    type: 'user',
    title: 'Request Approved',
    message:
        'An admin has approved the request for ${approveName}. Please check your ${approveWhat} profile for more information.',
    user: approveWho,
  );
  logFirebaseEvent('dynamicApprove_action_block');
  await action_blocks.triggerAppNotification(
    context,
    type: 'multiple_users',
    title: 'Request Approved',
    message:
        'An admin has approved ${approveName}. Please check the ${approveWhat} profile for more information.',
    multipleUsers:
        approvalList?.map((e) => e.approvalUser).withoutNulls.toList(),
  );
}

Future dynamicDecline(
  BuildContext context, {
  required String? declineWhat,
  List<ApprovalSignatoryStruct>? approvalList,
  required int? approvalStep,
  DocumentReference? declineOrgRef,
  DocumentReference? declineEventRef,
  required String? declineFeedback,
  required DocumentReference? declineToWho,
  required String? declineName,
}) async {
  logFirebaseEvent('dynamicDecline_update_app_state');
  FFAppState().signatorySet =
      approvalList!.toList().cast<ApprovalSignatoryStruct>();
  logFirebaseEvent('dynamicDecline_update_app_state');
  FFAppState().updateSignatorySetAtIndex(
    approvalStep!,
    (e) => e
      ..approvalStatus = 'Declined'
      ..approvalTimestamp = getCurrentTimestamp
      ..approvalFeedback = declineFeedback,
  );
  if (declineOrgRef != null) {
    logFirebaseEvent('dynamicDecline_backend_call');

    await declineOrgRef!.update({
      ...createOrganizationsRecordData(
        status: 'Declined',
        currentApprovalStep: approvalStep,
      ),
      ...mapToFirestore(
        {
          'current_approval_signatory': getApprovalSignatoryListFirestoreData(
            FFAppState().signatorySet,
          ),
          'status_last_updated': FieldValue.serverTimestamp(),
        },
      ),
    });
    logFirebaseEvent('dynamicDecline_backend_call');

    await ApplicationRecord.createDoc(declineOrgRef!).set({
      ...createApplicationRecordData(
        message:
            'The request has been declined by ${FFAppState().signatorySet[approvalStep!].approvalRole == 'Full-Time Faculty' ? 'adviser' : FFAppState().signatorySet[approvalStep!].approvalRole}.',
        status: 'Declined',
        schoolAdmin: currentUserReference,
        feedback: declineFeedback,
      ),
      ...mapToFirestore(
        {
          'timestamp': FieldValue.serverTimestamp(),
        },
      ),
    });
  } else if (declineEventRef != null) {
    logFirebaseEvent('dynamicDecline_backend_call');

    await declineEventRef!.update({
      ...createEventsRecordData(
        status: 'Declined',
        currentApprovalStep: approvalStep,
      ),
      ...mapToFirestore(
        {
          'current_approval_signatory': getApprovalSignatoryListFirestoreData(
            FFAppState().signatorySet,
          ),
          'status_last_updated': FieldValue.serverTimestamp(),
        },
      ),
    });
    logFirebaseEvent('dynamicDecline_backend_call');

    await EventApplicationRecord.createDoc(declineEventRef!).set({
      ...createEventApplicationRecordData(
        message:
            'The request has been declined by ${FFAppState().signatorySet[approvalStep!].approvalRole == 'Full-Time Faculty' ? 'adviser' : FFAppState().signatorySet[approvalStep!].approvalRole}.',
        status: 'Declined',
        schoolAdmin: currentUserReference,
        feedback: declineFeedback,
      ),
      ...mapToFirestore(
        {
          'timestamp': FieldValue.serverTimestamp(),
        },
      ),
    });
  } else {
    return;
  }

  logFirebaseEvent('dynamicDecline_action_block');
  await action_blocks.logs(
    context,
    type: 'declined',
    module: declineWhat,
    doneToName: 'the request',
  );
  logFirebaseEvent('dynamicDecline_action_block');
  await action_blocks.triggerAppNotification(
    context,
    type: 'user',
    title: 'Org Declined',
    message:
        'An admin has declined the application for  ${declineName}. Please check your ${declineWhat} profile for more information.',
    user: declineToWho,
  );
  logFirebaseEvent('dynamicDecline_action_block');
  await action_blocks.triggerAppNotification(
    context,
    type: 'multiple_users',
    title: 'Org Declined',
    message:
        'An admin has declined the application for ${declineName}. Please check the ${declineWhat} profile for more information.',
    multipleUsers:
        approvalList?.map((e) => e.approvalUser).withoutNulls.toList(),
  );
}

Future dynamicRevision(
  BuildContext context, {
  required String? reviseWhat,
  required List<ApprovalSignatoryStruct>? approvalList,
  required int? approvalStep,
  DocumentReference? reviseOrgRef,
  DocumentReference? reviseEventRef,
  required String? reviseFeedback,
  required DocumentReference? reviseToWho,
  required String? reviseName,
}) async {
  logFirebaseEvent('dynamicRevision_update_app_state');
  FFAppState().signatorySet =
      approvalList!.toList().cast<ApprovalSignatoryStruct>();
  logFirebaseEvent('dynamicRevision_update_app_state');
  FFAppState().updateSignatorySetAtIndex(
    approvalStep!,
    (e) => e
      ..approvalStatus = 'Revision'
      ..approvalTimestamp = getCurrentTimestamp
      ..approvalFeedback = reviseFeedback,
  );
  if (reviseOrgRef != null) {
    logFirebaseEvent('dynamicRevision_backend_call');

    await reviseOrgRef!.update({
      ...createOrganizationsRecordData(
        status: 'Revision',
        currentApprovalStep: approvalStep,
      ),
      ...mapToFirestore(
        {
          'current_approval_signatory': getApprovalSignatoryListFirestoreData(
            FFAppState().signatorySet,
          ),
          'status_last_updated': FieldValue.serverTimestamp(),
        },
      ),
    });
    logFirebaseEvent('dynamicRevision_backend_call');

    await ApplicationRecord.createDoc(reviseOrgRef!).set({
      ...createApplicationRecordData(
        message:
            '${FFAppState().signatorySet[approvalStep!].approvalRole == 'Full-Time Faculty' ? 'Adviser' : FFAppState().signatorySet[approvalStep!].approvalRole} has given feedback for revisions.',
        status: 'Revision',
        schoolAdmin: currentUserReference,
        feedback: reviseFeedback,
      ),
      ...mapToFirestore(
        {
          'timestamp': FieldValue.serverTimestamp(),
        },
      ),
    });
  } else if (reviseEventRef != null) {
    logFirebaseEvent('dynamicRevision_backend_call');

    await reviseEventRef!.update({
      ...createEventsRecordData(
        status: 'Revision',
        currentApprovalStep: approvalStep,
      ),
      ...mapToFirestore(
        {
          'current_approval_signatory': getApprovalSignatoryListFirestoreData(
            FFAppState().signatorySet,
          ),
          'status_last_updated': FieldValue.serverTimestamp(),
        },
      ),
    });
    logFirebaseEvent('dynamicRevision_backend_call');

    await EventApplicationRecord.createDoc(reviseEventRef!).set({
      ...createEventApplicationRecordData(
        message:
            '${FFAppState().signatorySet[approvalStep!].approvalRole == 'Full-Time Faculty' ? 'Adviser' : FFAppState().signatorySet[approvalStep!].approvalRole} has given feedback for revisions.',
        status: 'Revision',
        schoolAdmin: currentUserReference,
        feedback: reviseFeedback,
      ),
      ...mapToFirestore(
        {
          'timestamp': FieldValue.serverTimestamp(),
        },
      ),
    });
  } else {
    return;
  }

  logFirebaseEvent('dynamicRevision_action_block');
  await action_blocks.logs(
    context,
    type: 'revision',
    module: reviseWhat,
    doneToName: 'to the request',
  );
  logFirebaseEvent('dynamicRevision_action_block');
  await action_blocks.triggerAppNotification(
    context,
    type: 'user',
    title: 'Revision Needed',
    message:
        'An admin has given some feedback for revision to ${reviseName}. Please check your ${reviseWhat} profile for more information.',
    user: reviseToWho,
  );
  logFirebaseEvent('dynamicRevision_action_block');
  await action_blocks.triggerAppNotification(
    context,
    type: 'multiple_users',
    title: 'Revision Needed',
    message:
        'An admin has given some feedback for revision to ${reviseName}. Please check the ${reviseWhat} profile for more information.',
    multipleUsers:
        approvalList?.map((e) => e.approvalUser).withoutNulls.toList(),
  );
}

Future triggerAppNotification(
  BuildContext context, {
  required String? type,
  required String? title,
  required String? message,
  DocumentReference? user,
  List<DocumentReference>? multipleUsers,
  String? iconImage,
}) async {
  logFirebaseEvent('triggerAppNotification_backend_call');

  await NotificationsRecord.collection.doc().set({
    ...createNotificationsRecordData(
      type: type,
      title: title,
      message: message,
      user: user,
      createdBy: currentUserReference,
      iconImage: iconImage,
    ),
    ...mapToFirestore(
      {
        'multiple_users': multipleUsers,
        'created_on': FieldValue.serverTimestamp(),
      },
    ),
  });
}

Future resetRevisionStatus(
  BuildContext context, {
  required List<ApprovalSignatoryStruct>? signatorySet,
}) async {
  logFirebaseEvent('resetRevisionStatus_update_app_state');
  FFAppState().signatorySet =
      signatorySet!.toList().cast<ApprovalSignatoryStruct>();
  FFAppState().index = 0;
  while (FFAppState().index < signatorySet!.length) {
    logFirebaseEvent('resetRevisionStatus_update_app_state');
    FFAppState().updateSignatorySetAtIndex(
      FFAppState().index,
      (e) => e
        ..approvalStatus = 'Pending'
        ..approvalTimestamp = null
        ..approvalFeedback = null,
    );
    // End of Signatory List Set Up
    logFirebaseEvent('resetRevisionStatus_EndofSignatoryListSe');
    FFAppState().index = FFAppState().index + 1;
  }
}
