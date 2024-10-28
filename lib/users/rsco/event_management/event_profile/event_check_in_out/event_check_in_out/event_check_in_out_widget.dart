import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/dialog_box/failed_dialog_box/failed_dialog_box_widget.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'event_check_in_out_model.dart';
export 'event_check_in_out_model.dart';

class EventCheckInOutWidget extends StatefulWidget {
  const EventCheckInOutWidget({
    super.key,
    this.eventDoc,
  });

  final EventsRecord? eventDoc;

  @override
  State<EventCheckInOutWidget> createState() => _EventCheckInOutWidgetState();
}

class _EventCheckInOutWidgetState extends State<EventCheckInOutWidget> {
  late EventCheckInOutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventCheckInOutModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'event_check_in_out'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('EVENT_CHECK_IN_OUT_event_check_in_out_ON');
      logFirebaseEvent('event_check_in_out_update_app_state');
      FFAppState().scannedNFCTag = ' ';
      FFAppState().scannedNFCresult = ' ';
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<EventAttendeesRecord>>(
      stream: queryEventAttendeesRecord(
        parent: widget.eventDoc?.reference,
        queryBuilder: (eventAttendeesRecord) => eventAttendeesRecord
            .where(
              'ticket_status',
              isEqualTo: 'Approved',
            )
            .orderBy('ticket_updated_on', descending: true),
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
        List<EventAttendeesRecord> eventCheckInOutEventAttendeesRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: SizedBox(
              width: 250.0,
              child: Drawer(
                elevation: 16.0,
                child: WebViewAware(
                  child: wrapWithModel(
                    model: _model.sideBarEventProfileModel,
                    updateCallback: () => safeSetState(() {}),
                    child: SideBarEventProfileWidget(
                      eventDoc: widget.eventDoc!,
                    ),
                  ),
                ),
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    height: 170.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: SizedBox(
                      height: 190.0,
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 20.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'EVENT_CHECK_IN_OUT_Icon_eu9wxygw_ON_TAP');
                                          logFirebaseEvent('Icon_drawer');
                                          scaffoldKey.currentState!
                                              .openDrawer();
                                        },
                                        child: Icon(
                                          FFIcons.kcategory4,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Check In & Out',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Scan Ticket or Tap School ID',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.25),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 30.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EVENT_CHECK_IN_OUT_Container_fd45ky8d_ON');
                                      logFirebaseEvent('Container_navigate_to');

                                      context.goNamed(
                                        'event_profile_insights',
                                        queryParameters: {
                                          'eventDoc': serializeParam(
                                            widget.eventDoc,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'eventDoc': widget.eventDoc,
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.insights_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Insights',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EVENT_CHECK_IN_OUT_Container_8ao9bwv1_ON');
                                      logFirebaseEvent('Container_navigate_to');

                                      context.goNamed(
                                        'event_profile_dashboard',
                                        queryParameters: {
                                          'eventDoc': serializeParam(
                                            widget.eventDoc,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'eventDoc': widget.eventDoc,
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF99F58),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                FFIcons.khome,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Home',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EVENT_CHECK_IN_OUT_Container_z579dqs5_ON');
                                      logFirebaseEvent('Container_navigate_to');

                                      context.goNamed(
                                        'event_guests_all',
                                        queryParameters: {
                                          'eventDoc': serializeParam(
                                            widget.eventDoc,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'eventDoc': widget.eventDoc,
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF599AFF),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                FFIcons.kuserTag,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Guest',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
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
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 30.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'EVENT_CHECK_IN_OUT_Container_d8gjrqrj_ON');
                                    logFirebaseEvent('Container_navigate_to');

                                    context.pushNamed(
                                      'event_guests_going',
                                      queryParameters: {
                                        'eventDoc': serializeParam(
                                          widget.eventDoc,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'eventDoc': widget.eventDoc,
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .backPanel,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Icon(
                                              FFIcons.kpet,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  eventCheckInOutEventAttendeesRecordList
                                                      .where((e) =>
                                                          e.ticketStatus ==
                                                          'Approved')
                                                      .toList()
                                                      .length
                                                      .toString(),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Text(
                                                'Guests',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'EVENT_CHECK_IN_OUT_Container_lzu1waw3_ON');
                                    logFirebaseEvent('Container_navigate_to');

                                    context.pushNamed(
                                      'event_checked_in',
                                      queryParameters: {
                                        'eventDoc': serializeParam(
                                          widget.eventDoc,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'eventDoc': widget.eventDoc,
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .backPanel,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Icon(
                                              FFIcons.kmagicStar4,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              size: 24.0,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  eventCheckInOutEventAttendeesRecordList
                                                      .where((e) =>
                                                          e.ticketCheckIn !=
                                                          null)
                                                      .toList()
                                                      .length
                                                      .toString(),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Text(
                                                'Checked In',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'EVENT_CHECK_IN_OUT_Container_egpgbmap_ON');
                                    logFirebaseEvent('Container_navigate_to');

                                    context.pushNamed(
                                      'event_checked_out',
                                      queryParameters: {
                                        'eventDoc': serializeParam(
                                          widget.eventDoc,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'eventDoc': widget.eventDoc,
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .backPanel,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Icon(
                                              Icons.exit_to_app,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              size: 24.0,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  eventCheckInOutEventAttendeesRecordList
                                                      .where((e) =>
                                                          e.ticketCheckOut !=
                                                          null)
                                                      .toList()
                                                      .length
                                                      .toString(),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Text(
                                                'Checked Out',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                        if (functions.checkEventStatus(
                                widget.eventDoc!.startDate!,
                                widget.eventDoc!.endTime!,
                                getCurrentTimestamp) !=
                            'concluded')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Transform.scale(
                                  scaleX: 1.0,
                                  scaleY: 1.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Tap_ID_4.gif',
                                      width: double.infinity,
                                      height: 250.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Builder(
                                          builder: (context) => FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'EVENT_CHECK_IN_OUT_SCAN_TICKET_BTN_ON_TA');
                                              var shouldSetState = false;
                                              logFirebaseEvent(
                                                  'Button_update_app_state');
                                              FFAppState().scannedNFCTag = ' ';
                                              FFAppState().scannedNFCresult =
                                                  ' ';
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'Button_scan_barcode_q_r_code');
                                              _model.scannedQR =
                                                  await FlutterBarcodeScanner
                                                      .scanBarcode(
                                                '#C62828', // scanning line color
                                                'Cancel', // cancel button text
                                                true, // whether to show the flash icon
                                                ScanMode.QR,
                                              );

                                              shouldSetState = true;
                                              logFirebaseEvent(
                                                  'Button_update_page_state');
                                              _model.scannedQRcode =
                                                  _model.scannedQR;
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'Button_firestore_query');
                                              _model.qrOutput =
                                                  await queryEventAttendeesRecordOnce(
                                                parent:
                                                    widget.eventDoc?.reference,
                                                queryBuilder:
                                                    (eventAttendeesRecord) =>
                                                        eventAttendeesRecord
                                                            .where(
                                                  'ticket_code',
                                                  isEqualTo:
                                                      _model.scannedQRcode,
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);
                                              shouldSetState = true;
                                              if (_model.qrOutput?.ticketCode !=
                                                      null &&
                                                  _model.qrOutput?.ticketCode !=
                                                      '') {
                                                if ((_model.qrOutput
                                                            ?.ticketCheckIn !=
                                                        null) &&
                                                    (_model.qrOutput
                                                            ?.ticketCheckOut !=
                                                        null)) {
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus(),
                                                            child:
                                                                const FailedDialogBoxWidget(
                                                              failedDialogTitle:
                                                                  'Already Checked Out',
                                                              failedDialogMeesage:
                                                                  'The owner of this ticket has already checked out. You can only check in and out once in the event.',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  if (shouldSetState) {
                                                    safeSetState(() {});
                                                  }
                                                  return;
                                                } else if (_model.qrOutput
                                                        ?.ticketCheckIn ==
                                                    null) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model
                                                      .qrOutput!.reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'ticket_check_in':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                        'ticket_updated_on':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                      },
                                                    ),
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_action_block');
                                                  await action_blocks
                                                      .triggerAppNotification(
                                                    context,
                                                    type: 'user',
                                                    title: 'Event Check In',
                                                    message:
                                                        'You are now checked in for ${widget.eventDoc?.eventName}.',
                                                    user: _model
                                                        .qrOutput?.ticketUser,
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_trigger_push_notification');
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Event Check In',
                                                    notificationText:
                                                        'You are now checked in for ${widget.eventDoc?.eventName}.',
                                                    notificationSound:
                                                        'default',
                                                    userRefs: [
                                                      _model
                                                          .qrOutput!.ticketUser!
                                                    ],
                                                    initialPageName:
                                                        'auth_redirect',
                                                    parameterData: {},
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_action_block');
                                                  await action_blocks.logs(
                                                    context,
                                                    type: 'check in',
                                                    module: 'event',
                                                    doneToName:
                                                        'the event \"${widget.eventDoc?.eventName}\".',
                                                    doneTo: _model
                                                        .qrOutput?.ticketUser,
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus(),
                                                            child:
                                                                const CongratulationsDialogBoxWidget(
                                                              congratsDialogTitle:
                                                                  'Check In Successful',
                                                              congratsDialogMeesage:
                                                                  'The check in for this user has been successful.',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  if (shouldSetState) {
                                                    safeSetState(() {});
                                                  }
                                                  return;
                                                } else if (_model.qrOutput
                                                        ?.ticketCheckOut ==
                                                    null) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model
                                                      .qrOutput!.reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'ticket_updated_on':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                        'ticket_check_out':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                      },
                                                    ),
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_action_block');
                                                  await action_blocks
                                                      .triggerAppNotification(
                                                    context,
                                                    type: 'user',
                                                    title: 'Event Check Out',
                                                    message:
                                                        'You have checked out for ${widget.eventDoc?.eventName}.',
                                                    user: _model
                                                        .qrOutput?.ticketUser,
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_trigger_push_notification');
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Event Check Out',
                                                    notificationText:
                                                        'You have checked out for ${widget.eventDoc?.eventName}.',
                                                    notificationSound:
                                                        'default',
                                                    userRefs: [
                                                      _model
                                                          .qrOutput!.ticketUser!
                                                    ],
                                                    initialPageName:
                                                        'auth_redirect',
                                                    parameterData: {},
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_action_block');
                                                  await action_blocks.logs(
                                                    context,
                                                    type: 'check out',
                                                    module: 'event',
                                                    doneToName:
                                                        'the event \"${widget.eventDoc?.eventName}\".',
                                                    doneTo: _model
                                                        .qrOutput?.ticketUser,
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus(),
                                                            child:
                                                                const CongratulationsDialogBoxWidget(
                                                              congratsDialogTitle:
                                                                  'Check Out Successful',
                                                              congratsDialogMeesage:
                                                                  'The check out for this user has been successful.',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  if (shouldSetState) {
                                                    safeSetState(() {});
                                                  }
                                                  return;
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus(),
                                                            child:
                                                                const FailedDialogBoxWidget(
                                                              failedDialogTitle:
                                                                  'Error Occurred',
                                                              failedDialogMeesage:
                                                                  'There was a problem encountered while scanning your ticket. Please try again later.',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  if (shouldSetState) {
                                                    safeSetState(() {});
                                                  }
                                                  return;
                                                }
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus(),
                                                          child:
                                                              const FailedDialogBoxWidget(
                                                            failedDialogTitle:
                                                                'Invalid Ticket',
                                                            failedDialogMeesage:
                                                                'Your QR code is not valid for this event. Make sure that you are registered and has a valid ticket',
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );

                                                if (shouldSetState) {
                                                  safeSetState(() {});
                                                }
                                                return;
                                              }

                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                            },
                                            text: 'Scan Ticket',
                                            icon: const Icon(
                                              FFIcons.kticket,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Builder(
                                          builder: (context) => FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'EVENT_CHECK_IN_OUT_TAP_SCHOOL_I_D_BTN_ON');
                                              var shouldSetState = false;
                                              logFirebaseEvent(
                                                  'Button_update_app_state');
                                              FFAppState().scannedNFCTag = ' ';
                                              FFAppState().scannedNFCresult =
                                                  ' ';
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'Button_update_page_state');
                                              _model.scannedQRcode = '';
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'Button_custom_action');
                                              await actions.scanNFC();
                                              if (FFAppState()
                                                      .scannedNFCresult ==
                                                  'School ID has been detected!') {
                                                logFirebaseEvent(
                                                    'Button_firestore_query');
                                                _model.userOutput =
                                                    await queryUsersRecordOnce(
                                                  queryBuilder: (usersRecord) =>
                                                      usersRecord.where(
                                                    'nfc_tag',
                                                    isEqualTo: FFAppState()
                                                        .scannedNFCTag,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);
                                                shouldSetState = true;
                                                if (_model.userOutput?.email !=
                                                        null &&
                                                    _model.userOutput?.email !=
                                                        '') {
                                                  logFirebaseEvent(
                                                      'Button_firestore_query');
                                                  _model.attendeeOutput =
                                                      await queryEventAttendeesRecordOnce(
                                                    parent: widget
                                                        .eventDoc?.reference,
                                                    queryBuilder:
                                                        (eventAttendeesRecord) =>
                                                            eventAttendeesRecord
                                                                .where(
                                                      'ticket_user',
                                                      isEqualTo: _model
                                                          .userOutput
                                                          ?.reference,
                                                    ),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);
                                                  shouldSetState = true;
                                                  if (_model.attendeeOutput
                                                              ?.ticketCode !=
                                                          null &&
                                                      _model.attendeeOutput
                                                              ?.ticketCode !=
                                                          '') {
                                                    if ((_model.attendeeOutput
                                                                ?.ticketCheckIn !=
                                                            null) &&
                                                        (_model.attendeeOutput
                                                                ?.ticketCheckOut !=
                                                            null)) {
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () =>
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus(),
                                                                child:
                                                                    const FailedDialogBoxWidget(
                                                                  failedDialogTitle:
                                                                      'Already Checked Out',
                                                                  failedDialogMeesage:
                                                                      'The owner of this ticket has already checked out. You can only check in and out once in the event.',
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                      return;
                                                    } else if (_model
                                                            .attendeeOutput
                                                            ?.ticketCheckIn ==
                                                        null) {
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await _model
                                                          .attendeeOutput!
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'ticket_check_in':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                            'ticket_updated_on':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      logFirebaseEvent(
                                                          'Button_action_block');
                                                      await action_blocks
                                                          .triggerAppNotification(
                                                        context,
                                                        type: 'user',
                                                        title: 'Event Check In',
                                                        message:
                                                            'You are now checked in for ${widget.eventDoc?.eventName}.',
                                                        user: _model
                                                            .attendeeOutput
                                                            ?.ticketUser,
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_trigger_push_notification');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'Event Check In',
                                                        notificationText:
                                                            'You are now checked in for ${widget.eventDoc?.eventName}.',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          _model.attendeeOutput!
                                                              .ticketUser!
                                                        ],
                                                        initialPageName:
                                                            'auth_redirect',
                                                        parameterData: {},
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_action_block');
                                                      await action_blocks.logs(
                                                        context,
                                                        type: 'check in',
                                                        module: 'event',
                                                        doneToName:
                                                            'the event \"${widget.eventDoc?.eventName}\".',
                                                        doneTo: _model
                                                            .attendeeOutput
                                                            ?.ticketUser,
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () =>
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus(),
                                                                child:
                                                                    const CongratulationsDialogBoxWidget(
                                                                  congratsDialogTitle:
                                                                      'Check In Successful',
                                                                  congratsDialogMeesage:
                                                                      'The check in for this user has been successful.',
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                      return;
                                                    } else if (_model
                                                            .attendeeOutput
                                                            ?.ticketCheckOut ==
                                                        null) {
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await _model
                                                          .attendeeOutput!
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'ticket_updated_on':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                            'ticket_check_out':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      logFirebaseEvent(
                                                          'Button_action_block');
                                                      await action_blocks
                                                          .triggerAppNotification(
                                                        context,
                                                        type: 'user',
                                                        title:
                                                            'Event Check Out',
                                                        message:
                                                            'You have checked out for ${widget.eventDoc?.eventName}.',
                                                        user: _model
                                                            .attendeeOutput
                                                            ?.ticketUser,
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_trigger_push_notification');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'Event Check Out',
                                                        notificationText:
                                                            'You have checked out for ${widget.eventDoc?.eventName}.',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          _model.attendeeOutput!
                                                              .ticketUser!
                                                        ],
                                                        initialPageName:
                                                            'auth_redirect',
                                                        parameterData: {},
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_action_block');
                                                      await action_blocks.logs(
                                                        context,
                                                        type: 'check out',
                                                        module: 'event',
                                                        doneToName:
                                                            'the event \"${widget.eventDoc?.eventName}\".',
                                                        doneTo: _model
                                                            .attendeeOutput
                                                            ?.ticketUser,
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () =>
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus(),
                                                                child:
                                                                    const CongratulationsDialogBoxWidget(
                                                                  congratsDialogTitle:
                                                                      'Check Out Successful',
                                                                  congratsDialogMeesage:
                                                                      'The check out for this user has been successful.',
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                      return;
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () =>
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus(),
                                                                child:
                                                                    const FailedDialogBoxWidget(
                                                                  failedDialogTitle:
                                                                      'Error Occurred',
                                                                  failedDialogMeesage:
                                                                      'There was a problem encountered while detecting your school ID. Please try again later.',
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                      return;
                                                    }
                                                  } else {
                                                    logFirebaseEvent(
                                                        'Button_alert_dialog');
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus(),
                                                              child:
                                                                  const FailedDialogBoxWidget(
                                                                failedDialogTitle:
                                                                    'User Not Registered',
                                                                failedDialogMeesage:
                                                                    'The user is not registered in the event.',
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    if (shouldSetState) {
                                                      safeSetState(() {});
                                                    }
                                                    return;
                                                  }
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus(),
                                                            child:
                                                                const FailedDialogBoxWidget(
                                                              failedDialogTitle:
                                                                  'User Not Found',
                                                              failedDialogMeesage:
                                                                  'The school ID is not registered in NU GO. Make sure that you have setup your school ID on your account.',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  if (shouldSetState) {
                                                    safeSetState(() {});
                                                  }
                                                  return;
                                                }
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus(),
                                                          child:
                                                              FailedDialogBoxWidget(
                                                            failedDialogTitle:
                                                                'Error Occurred',
                                                            failedDialogMeesage:
                                                                FFAppState()
                                                                    .scannedNFCresult,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );

                                                if (shouldSetState) {
                                                  safeSetState(() {});
                                                }
                                                return;
                                              }

                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                            },
                                            text: 'Tap School ID',
                                            icon: const Icon(
                                              FFIcons.kscan,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(width: 5.0))
                                        .around(const SizedBox(width: 5.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (functions.checkEventStatus(
                                widget.eventDoc!.startDate!,
                                widget.eventDoc!.endTime!,
                                getCurrentTimestamp) ==
                            'concluded')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'The event has already concluded. You are not allowed to check-in nor check-out any attendees anymore.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 30.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Builder(
                                builder: (context) {
                                  final allGuests =
                                      eventCheckInOutEventAttendeesRecordList
                                          .sortedList(
                                              keyOf: (e) => e.ticketUpdatedOn!,
                                              desc: true)
                                          .where((e) => e.ticketCheckIn != null)
                                          .toList()
                                          .take(5)
                                          .toList();
                                  if (allGuests.isEmpty) {
                                    return const EmptyListWidget(
                                      emptyWhat: 'check ins',
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: allGuests.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 10.0),
                                    itemBuilder: (context, allGuestsIndex) {
                                      final allGuestsItem =
                                          allGuests[allGuestsIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: FutureBuilder<UsersRecord>(
                                          future: UsersRecord.getDocumentOnce(
                                              allGuestsItem.ticketUser!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitChasingDots(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }

                                            final containerUsersRecord =
                                                snapshot.data!;

                                            return Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 30.0,
                                                                height: 30.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    containerUsersRecord
                                                                        .photoUrl,
                                                                    'https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: FutureBuilder<
                                                                    ProgramsRecord>(
                                                                  future: ProgramsRecord.getDocumentOnce(
                                                                      containerUsersRecord
                                                                          .student
                                                                          .program!),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitChasingDots(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }

                                                                    final columnProgramsRecord =
                                                                        snapshot
                                                                            .data!;

                                                                    return Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          '${valueOrDefault<String>(
                                                                            containerUsersRecord.displayName,
                                                                            'Jhon Mark Luces Santos',
                                                                          )} ${allGuestsItem.ticketCheckOut != null ? 'checked out.' : 'checked in.'}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                fontSize: 13.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          columnProgramsRecord
                                                                              .programNickname,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                fontSize: 11.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    if ((allGuestsItem
                                                                .ticketCheckIn !=
                                                            null) &&
                                                        (allGuestsItem
                                                                .ticketCheckOut ==
                                                            null))
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            5.0),
                                                                child: Text(
                                                                  'In',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    if ((allGuestsItem
                                                                .ticketCheckIn !=
                                                            null) &&
                                                        (allGuestsItem
                                                                .ticketCheckOut !=
                                                            null))
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            5.0),
                                                                child: Text(
                                                                  'Out',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              "relative",
                                                              allGuestsItem
                                                                  .ticketUpdatedOn!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
