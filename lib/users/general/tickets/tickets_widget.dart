import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/no_ticket/no_ticket_widget.dart';
import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/general/events/event_check_ticket/event_check_ticket_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'tickets_model.dart';
export 'tickets_model.dart';

class TicketsWidget extends StatefulWidget {
  const TicketsWidget({super.key});

  @override
  State<TicketsWidget> createState() => _TicketsWidgetState();
}

class _TicketsWidgetState extends State<TicketsWidget>
    with TickerProviderStateMixin {
  late TicketsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'tickets'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<EventAttendeesRecord>>(
      stream: queryEventAttendeesRecord(
        queryBuilder: (eventAttendeesRecord) => eventAttendeesRecord
            .where(
              'ticket_user',
              isEqualTo: currentUserReference,
            )
            .orderBy('ticket_created_on', descending: true),
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
        List<EventAttendeesRecord> ticketsEventAttendeesRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.userHeaderComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: UserHeaderComponentWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'TICKETS_PAGE_Text_gasac72c_ON_TAP');
                                  logFirebaseEvent('Text_navigate_to');

                                  context.pushNamed('ticket_design2');
                                },
                                child: Text(
                                  'My ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Text(
                                'Tickets',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(0.0, 0),
                                        child: FlutterFlowButtonTabBar(
                                          useToggleButtonStyle: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          unselectedLabelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          labelColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          unselectedLabelColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .tabBarSelected,
                                          unselectedBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .tabBarUnselected,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .tabBarBorder,
                                          unselectedBorderColor:
                                              FlutterFlowTheme.of(context)
                                                  .tabBarUnselected,
                                          borderWidth: 1.0,
                                          borderRadius: 9.0,
                                          elevation: 0.0,
                                          buttonMargin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          tabs: [
                                            Tab(
                                              text: 'Pending',
                                            ),
                                            Tab(
                                              text: 'Approved',
                                            ),
                                          ],
                                          controller: _model.tabBarController,
                                          onTap: (i) async {
                                            [() async {}, () async {}][i]();
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          controller: _model.tabBarController,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final upcomingTickets =
                                                      ticketsEventAttendeesRecordList
                                                          .where((e) =>
                                                              e.ticketStatus ==
                                                              'Pending')
                                                          .toList();
                                                  if (upcomingTickets.isEmpty) {
                                                    return NoTicketWidget();
                                                  }

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        upcomingTickets.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(height: 10.0),
                                                    itemBuilder: (context,
                                                        upcomingTicketsIndex) {
                                                      final upcomingTicketsItem =
                                                          upcomingTickets[
                                                              upcomingTicketsIndex];
                                                      return Builder(
                                                        builder: (context) =>
                                                            FutureBuilder<
                                                                EventsRecord>(
                                                          future: EventsRecord
                                                              .getDocumentOnce(
                                                                  upcomingTicketsItem
                                                                      .parentReference),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitChasingDots(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }

                                                            final containerEventsRecord =
                                                                snapshot.data!;

                                                            return InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'TICKETS_PAGE_Container_ur13bfwg_ON_TAP');
                                                                if (functions.checkEventStatus(
                                                                        containerEventsRecord
                                                                            .startDate!,
                                                                        containerEventsRecord
                                                                            .endTime!,
                                                                        getCurrentTimestamp) ==
                                                                    'concluded') {
                                                                  logFirebaseEvent(
                                                                      'Container_alert_dialog');
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(dialogContext).unfocus(),
                                                                            child:
                                                                                InformationDialogBoxWidget(
                                                                              infoDialogTitle: 'Event Concluded',
                                                                              infoDialogMeesage: 'The event has already concluded. Thank you for your interest!',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Container_alert_dialog');
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(dialogContext).unfocus(),
                                                                            child:
                                                                                InformationDialogBoxWidget(
                                                                              infoDialogTitle: 'Ticket Pending',
                                                                              infoDialogMeesage: 'Your ticket is pending. Please wait for the organizer to approve your request.',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                }
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          0.5,
                                                                    ),
                                                                  ),
                                                                  child: FutureBuilder<
                                                                      OrganizationsRecord>(
                                                                    future: OrganizationsRecord.getDocumentOnce(
                                                                        containerEventsRecord
                                                                            .orgReference!),
                                                                    builder:
                                                                        (context,
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
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }

                                                                      final stackOrganizationsRecord =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        height:
                                                                            110.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.all(5.0),
                                                                                        child: Container(
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        ClipRRect(
                                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                                          child: Container(
                                                                                                            width: 30.0,
                                                                                                            height: 30.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                                                width: 0.5,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Container(
                                                                                                                  width: double.infinity,
                                                                                                                  height: 11.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                                                      width: 0.5,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Text(
                                                                                                                    dateTimeFormat(
                                                                                                                      "MMM",
                                                                                                                      containerEventsRecord.startDate!,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Montserrat',
                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                          fontSize: 7.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    dateTimeFormat(
                                                                                                                      "dd",
                                                                                                                      containerEventsRecord.startDate!,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Montserrat',
                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                          fontSize: 14.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Flexible(
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                                                          child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                                child: Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    containerEventsRecord.eventName,
                                                                                                                    'GDSC Bulldogs 2024',
                                                                                                                  ).maybeHandleOverflow(
                                                                                                                    maxChars: 35,
                                                                                                                    replacement: '…',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Montserrat',
                                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                        fontSize: 14.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                                child: Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    stackOrganizationsRecord.organizationName,
                                                                                                                    'Google Developer Student Clubs - NU Baliwag',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Montserrat',
                                                                                                                        color: FlutterFlowTheme.of(context).panelText,
                                                                                                                        fontSize: 11.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FontWeight.normal,
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
                                                                                                if (functions.checkEventStatus(containerEventsRecord.startDate!, containerEventsRecord.endTime!, getCurrentTimestamp) != 'concluded')
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(1.0, 1.0),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                      child: Container(
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: () {
                                                                                                            if (upcomingTicketsItem.ticketStatus == 'Pending') {
                                                                                                              return FlutterFlowTheme.of(context).accent2;
                                                                                                            } else if (upcomingTicketsItem.ticketStatus == 'Approved') {
                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                            } else {
                                                                                                              return FlutterFlowTheme.of(context).error;
                                                                                                            }
                                                                                                          }(),
                                                                                                          borderRadius: BorderRadius.circular(18.0),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(5.0, 3.0, 5.0, 3.0),
                                                                                                          child: Container(
                                                                                                            decoration: BoxDecoration(),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsets.all(4.0),
                                                                                                              child: Text(
                                                                                                                upcomingTicketsItem.ticketStatus,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Montserrat',
                                                                                                                      color: () {
                                                                                                                        if (upcomingTicketsItem.ticketStatus == 'Pending') {
                                                                                                                          return FlutterFlowTheme.of(context).primaryText;
                                                                                                                        } else if (upcomingTicketsItem.ticketStatus == 'Approved') {
                                                                                                                          return FlutterFlowTheme.of(context).primaryBackground;
                                                                                                                        } else {
                                                                                                                          return FlutterFlowTheme.of(context).primaryBackground;
                                                                                                                        }
                                                                                                                      }(),
                                                                                                                      fontSize: 10.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 100.0,
                                                                                      child: StyledVerticalDivider(
                                                                                        width: 4.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                        lineStyle: DividerLineStyle.dashed,
                                                                                      ),
                                                                                    ),
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: Container(
                                                                                        width: 120.0,
                                                                                        height: 120.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          borderRadius: BorderRadius.circular(0.0),
                                                                                        ),
                                                                                        child: Container(
                                                                                          width: 200.0,
                                                                                          height: double.infinity,
                                                                                          child: custom_widgets.GrayscaleColorFiltered(
                                                                                            width: 200.0,
                                                                                            height: double.infinity,
                                                                                            imageUrl: valueOrDefault<String>(
                                                                                              containerEventsRecord.coverPhoto,
                                                                                              'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnu_cover.jpg?alt=media&token=c0448910-d37d-456d-804c-ae8c875ac08f',
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              tablet: false,
                                                                              tabletLandscape: false,
                                                                              desktop: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.32, -1.17),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              tablet: false,
                                                                              tabletLandscape: false,
                                                                              desktop: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.32, 1.22),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.77, -1.22),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.77, 1.22),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
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
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final pendingTickets =
                                                      ticketsEventAttendeesRecordList
                                                          .where((e) =>
                                                              e.ticketStatus ==
                                                              'Approved')
                                                          .toList();
                                                  if (pendingTickets.isEmpty) {
                                                    return NoTicketWidget();
                                                  }

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        pendingTickets.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(height: 10.0),
                                                    itemBuilder: (context,
                                                        pendingTicketsIndex) {
                                                      final pendingTicketsItem =
                                                          pendingTickets[
                                                              pendingTicketsIndex];
                                                      return Builder(
                                                        builder: (context) =>
                                                            FutureBuilder<
                                                                EventsRecord>(
                                                          future: EventsRecord
                                                              .getDocumentOnce(
                                                                  pendingTicketsItem
                                                                      .parentReference),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitChasingDots(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }

                                                            final containerEventsRecord =
                                                                snapshot.data!;

                                                            return InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'TICKETS_PAGE_Container_3di4jq8f_ON_TAP');
                                                                if (functions.checkEventStatus(
                                                                        containerEventsRecord
                                                                            .startDate!,
                                                                        containerEventsRecord
                                                                            .endTime!,
                                                                        getCurrentTimestamp) ==
                                                                    'concluded') {
                                                                  logFirebaseEvent(
                                                                      'Container_alert_dialog');
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(dialogContext).unfocus(),
                                                                            child:
                                                                                InformationDialogBoxWidget(
                                                                              infoDialogTitle: 'Event Concluded',
                                                                              infoDialogMeesage: 'The event has already concluded. Thank you for your interest!',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Container_alert_dialog');
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(dialogContext).unfocus(),
                                                                            child:
                                                                                EventCheckTicketWidget(
                                                                              attendeeDoc: pendingTicketsItem,
                                                                              eventDoc: containerEventsRecord,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                }
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          0.5,
                                                                    ),
                                                                  ),
                                                                  child: FutureBuilder<
                                                                      OrganizationsRecord>(
                                                                    future: OrganizationsRecord.getDocumentOnce(
                                                                        containerEventsRecord
                                                                            .orgReference!),
                                                                    builder:
                                                                        (context,
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
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }

                                                                      final stackOrganizationsRecord =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        height:
                                                                            110.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.all(5.0),
                                                                                        child: Container(
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        ClipRRect(
                                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                                          child: Container(
                                                                                                            width: 30.0,
                                                                                                            height: 30.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                                                width: 0.5,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Container(
                                                                                                                  width: double.infinity,
                                                                                                                  height: 11.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                                                      width: 0.5,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Text(
                                                                                                                    dateTimeFormat(
                                                                                                                      "MMM",
                                                                                                                      containerEventsRecord.startDate!,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Montserrat',
                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                          fontSize: 7.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    dateTimeFormat(
                                                                                                                      "dd",
                                                                                                                      containerEventsRecord.startDate!,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Montserrat',
                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                          fontSize: 14.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Flexible(
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                                                          child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                                child: Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    containerEventsRecord.eventName,
                                                                                                                    'GDSC Bulldogs 2024',
                                                                                                                  ).maybeHandleOverflow(
                                                                                                                    maxChars: 35,
                                                                                                                    replacement: '…',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Montserrat',
                                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                        fontSize: 14.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                                child: Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    stackOrganizationsRecord.organizationName,
                                                                                                                    'Google Developer Student Clubs - NU Baliwag',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Montserrat',
                                                                                                                        color: FlutterFlowTheme.of(context).panelText,
                                                                                                                        fontSize: 11.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FontWeight.normal,
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
                                                                                                if (functions.checkEventStatus(containerEventsRecord.startDate!, containerEventsRecord.endTime!, getCurrentTimestamp) != 'concluded')
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(1.0, 1.0),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                      child: Container(
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: () {
                                                                                                            if (pendingTicketsItem.ticketStatus == 'Pending') {
                                                                                                              return FlutterFlowTheme.of(context).accent2;
                                                                                                            } else if (pendingTicketsItem.ticketStatus == 'Approved') {
                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                            } else {
                                                                                                              return FlutterFlowTheme.of(context).error;
                                                                                                            }
                                                                                                          }(),
                                                                                                          borderRadius: BorderRadius.circular(18.0),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(5.0, 3.0, 5.0, 3.0),
                                                                                                          child: Container(
                                                                                                            decoration: BoxDecoration(),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsets.all(4.0),
                                                                                                              child: Text(
                                                                                                                pendingTicketsItem.ticketStatus,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Montserrat',
                                                                                                                      color: () {
                                                                                                                        if (pendingTicketsItem.ticketStatus == 'Pending') {
                                                                                                                          return FlutterFlowTheme.of(context).primaryText;
                                                                                                                        } else if (pendingTicketsItem.ticketStatus == 'Approved') {
                                                                                                                          return FlutterFlowTheme.of(context).primaryBackground;
                                                                                                                        } else {
                                                                                                                          return FlutterFlowTheme.of(context).primaryBackground;
                                                                                                                        }
                                                                                                                      }(),
                                                                                                                      fontSize: 10.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 100.0,
                                                                                      child: StyledVerticalDivider(
                                                                                        width: 4.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                        lineStyle: DividerLineStyle.dashed,
                                                                                      ),
                                                                                    ),
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: Container(
                                                                                        width: 120.0,
                                                                                        height: 120.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          borderRadius: BorderRadius.circular(0.0),
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(0.0),
                                                                                          child: Image.network(
                                                                                            valueOrDefault<String>(
                                                                                              containerEventsRecord.coverPhoto,
                                                                                              'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnu_cover.jpg?alt=media&token=c0448910-d37d-456d-804c-ae8c875ac08f',
                                                                                            ),
                                                                                            width: 200.0,
                                                                                            height: 200.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              tablet: false,
                                                                              tabletLandscape: false,
                                                                              desktop: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.32, -1.17),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              tablet: false,
                                                                              tabletLandscape: false,
                                                                              desktop: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.32, 1.22),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.77, -1.22),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.77, 1.22),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
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
                                            ),
                                          ],
                                        ),
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.userNavBarComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: UserNavBarComponentWidget(
                        selectedPageIndex: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
