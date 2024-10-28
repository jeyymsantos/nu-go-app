import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:styled_divider/styled_divider.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'event_check_ticket_copy_model.dart';
export 'event_check_ticket_copy_model.dart';

class EventCheckTicketCopyWidget extends StatefulWidget {
  const EventCheckTicketCopyWidget({
    super.key,
    required this.attendeeDoc,
    required this.eventDoc,
  });

  final EventAttendeesRecord? attendeeDoc;
  final EventsRecord? eventDoc;

  @override
  State<EventCheckTicketCopyWidget> createState() =>
      _EventCheckTicketCopyWidgetState();
}

class _EventCheckTicketCopyWidgetState
    extends State<EventCheckTicketCopyWidget> {
  late EventCheckTicketCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventCheckTicketCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(1.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent(
                        'EVENT_CHECK_TICKET_COPY_Icon_hs9x5fn0_ON');
                    logFirebaseEvent('Icon_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 19.0,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).lineColor,
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: BarcodeWidget(
                        data: valueOrDefault<String>(
                          widget.attendeeDoc?.ticketCode,
                          'SampleCode',
                        ),
                        barcode: Barcode.qrCode(),
                        width: 200.0,
                        height: 200.0,
                        color: FlutterFlowTheme.of(context).primaryText,
                        backgroundColor: Colors.transparent,
                        errorBuilder: (context, error) => const SizedBox(
                          width: 200.0,
                          height: 200.0,
                        ),
                        drawText: false,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.eventDoc?.eventName,
                        'FFDC Extended Manila: Build Next-Gen Apps with FlutterFlow 5.0',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                StyledDivider(
                  thickness: 0.5,
                  color: FlutterFlowTheme.of(context).lineColor,
                  lineStyle: DividerLineStyle.dashed,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 2.5, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Name',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    currentUserDisplayName,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              2.5, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Student ID',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault(
                                        currentUserDocument?.idNumber, ''),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
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
                StyledDivider(
                  thickness: 0.5,
                  color: FlutterFlowTheme.of(context).lineColor,
                  lineStyle: DividerLineStyle.dashed,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'EVENT_CHECK_TICKET_COPY_Container_s2hfnt');
                                if (widget.eventDoc!.settings.isCampus) {
                                  logFirebaseEvent('Container_backend_call');
                                  _model.facilityOutput =
                                      await RoomsRecord.getDocumentOnce(
                                          widget.eventDoc!.facility!);
                                  logFirebaseEvent('Container_custom_action');
                                  _model.campusOutput =
                                      await actions.addEventToCalendar(
                                    widget.eventDoc!.eventName,
                                    widget.eventDoc!.objectives,
                                    widget.eventDoc!.startDate!,
                                    widget.eventDoc!.endTime!,
                                    '${_model.facilityOutput?.roomName}, NU Baliwag, SM Baliwag Complex, Brgy. Pagala, City of Baliwag, Bulacan, Philippines',
                                  );
                                  logFirebaseEvent('Container_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          title: const Text('Hmm'),
                                          content: Text(_model.campusOutput!),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                } else if (widget
                                    .eventDoc!.settings.isOnline) {
                                  logFirebaseEvent('Container_custom_action');
                                  _model.onlineOutput =
                                      await actions.addEventToCalendar(
                                    widget.eventDoc!.eventName,
                                    widget.eventDoc!.objectives,
                                    widget.eventDoc!.startDate!,
                                    widget.eventDoc!.endTime!,
                                    widget
                                        .eventDoc!.otherDetails.onlinePlatform,
                                  );
                                  logFirebaseEvent('Container_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          title: const Text('Hmm'),
                                          content: Text(_model.onlineOutput!),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  logFirebaseEvent('Container_custom_action');
                                  _model.outsideOutput =
                                      await actions.getAddressFromLatLng(
                                    widget.eventDoc!.otherDetails
                                        .outsideLocation!,
                                  );
                                  logFirebaseEvent('Container_custom_action');
                                  _model.addressOutput =
                                      await actions.addEventToCalendar(
                                    widget.eventDoc!.eventName,
                                    widget.eventDoc!.objectives,
                                    widget.eventDoc!.startDate!,
                                    widget.eventDoc!.endTime!,
                                    _model.outsideOutput!,
                                  );
                                  logFirebaseEvent('Container_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          title: const Text('Hmm'),
                                          content: Text(_model.addressOutput!),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                }

                                safeSetState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    width: 0.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Icon(
                                          FFIcons.kvideoAdd,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 14.0,
                                        ),
                                      ),
                                      Text(
                                        'Add to Calendar',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 0.5,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: Icon(
                                      FFIcons.kmessages,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 14.0,
                                    ),
                                  ),
                                  Text(
                                    'Contact Organizer',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Icon(
                                        FFIcons.ksend24,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 14.0,
                                      ),
                                    ),
                                    Text(
                                      'Invite a Friend',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                StyledDivider(
                  thickness: 0.5,
                  color: FlutterFlowTheme.of(context).lineColor,
                  lineStyle: DividerLineStyle.dashed,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 10.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text:
                                'No longer able to attend? Notify the host by ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'canceling your registration.',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.bold,
                            ),
                            mouseCursor: SystemMouseCursors.click,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                logFirebaseEvent(
                                    'EVENT_CHECK_TICKET_COPY_RichTextSpan_cgl');
                                var shouldSetState = false;
                                logFirebaseEvent('RichTextSpan_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: const WebViewAware(
                                        child: ConfirmDialogBoxWidget(
                                          confirmDialogTitle:
                                              'Cancel Registration',
                                          confirmDialogMeesage:
                                              'Are you sure you want to cancel your registration?',
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(
                                    () => _model.confirmDialog = value));

                                shouldSetState = true;
                                if (_model.confirmDialog!) {
                                  logFirebaseEvent('RichTextSpan_action_block');
                                  await action_blocks.triggerAppNotification(
                                    context,
                                    type: 'user',
                                    title: 'Event Participation Cancelled',
                                    message:
                                        'You have cancelled your event participation to ${widget.eventDoc?.eventName}. You may still try to re-join by submitting a join event request again on the event\'s profile.',
                                    user: widget.attendeeDoc?.ticketUser,
                                  );
                                  logFirebaseEvent(
                                      'RichTextSpan_trigger_push_notification');
                                  triggerPushNotification(
                                    notificationTitle:
                                        'Event Participation Cancelled',
                                    notificationText:
                                        'You have cancelled your event participation to ${widget.eventDoc?.eventName}.',
                                    notificationSound: 'default',
                                    userRefs: [
                                      widget.attendeeDoc!.ticketUser!
                                    ],
                                    initialPageName: 'auth_redirect',
                                    parameterData: {},
                                  );
                                  logFirebaseEvent('RichTextSpan_action_block');
                                  await action_blocks.logs(
                                    context,
                                    type: 'cancelled',
                                    module: 'event',
                                    doneToName:
                                        'the event participation for ${widget.eventDoc?.eventName}',
                                    doneTo: widget.attendeeDoc?.ticketUser,
                                  );
                                  logFirebaseEvent('RichTextSpan_backend_call');
                                  await widget.attendeeDoc!.reference.delete();
                                  logFirebaseEvent('RichTextSpan_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: const WebViewAware(
                                          child: CongratulationsDialogBoxWidget(
                                            congratsDialogTitle:
                                                'Event Participation Cancelled',
                                            congratsDialogMeesage:
                                                'You have cancelled your event participation. If you opt to join again, you will need to re-submit an approval.',
                                          ),
                                        ),
                                      );
                                    },
                                  );

                                  logFirebaseEvent(
                                      'RichTextSpan_close_dialog_drawer_etc');
                                  Navigator.pop(context);
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (shouldSetState) safeSetState(() {});
                              },
                          )
                        ],
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 11.0,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
