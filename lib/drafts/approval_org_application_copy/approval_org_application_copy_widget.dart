import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'approval_org_application_copy_model.dart';
export 'approval_org_application_copy_model.dart';

class ApprovalOrgApplicationCopyWidget extends StatefulWidget {
  const ApprovalOrgApplicationCopyWidget({
    super.key,
    required this.orgRef,
  });

  final DocumentReference? orgRef;

  @override
  State<ApprovalOrgApplicationCopyWidget> createState() =>
      _ApprovalOrgApplicationCopyWidgetState();
}

class _ApprovalOrgApplicationCopyWidgetState
    extends State<ApprovalOrgApplicationCopyWidget>
    with TickerProviderStateMixin {
  late ApprovalOrgApplicationCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApprovalOrgApplicationCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'approval_org_applicationCopy'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.revisionMessageTextController ??= TextEditingController();
    _model.revisionMessageFocusNode ??= FocusNode();

    _model.declineMessageTextController ??= TextEditingController();
    _model.declineMessageFocusNode ??= FocusNode();

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

    return StreamBuilder<OrganizationsRecord>(
      stream: OrganizationsRecord.getDocument(widget!.orgRef!),
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

        final approvalOrgApplicationCopyOrganizationsRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.titleHeaderComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: TitleHeaderComponentWidget(
                            titleText: 'Organization Approval',
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        approvalOrgApplicationCopyOrganizationsRecord
                                            .logo,
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/NU_shield.svg/1200px-NU_shield.svg.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      approvalOrgApplicationCopyOrganizationsRecord
                                          .organizationName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    approvalOrgApplicationCopyOrganizationsRecord
                                        .type,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 11.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'APPROVAL_ORG_APPLICATION_COPY_Row_uvf848');
                                                            logFirebaseEvent(
                                                                'Row_navigate_to');

                                                            context.pushNamed(
                                                              'org_application_detailed_status',
                                                              queryParameters: {
                                                                'orgRef':
                                                                    serializeParam(
                                                                  widget!
                                                                      .orgRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            15.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Latest Status',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Flexible(
                                                                              child: StreamBuilder<List<ApplicationRecord>>(
                                                                                stream: queryApplicationRecord(
                                                                                  parent: approvalOrgApplicationCopyOrganizationsRecord.reference,
                                                                                  queryBuilder: (applicationRecord) => applicationRecord.orderBy('timestamp', descending: true),
                                                                                  limit: 1,
                                                                                ),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        child: SpinKitChasingDots(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 50.0,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  List<ApplicationRecord> textApplicationRecordList = snapshot.data!;

                                                                                  return Text(
                                                                                    textApplicationRecordList.first.message,
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Montserrat',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.search,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Application ID',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Text(
                                                                approvalOrgApplicationCopyOrganizationsRecord
                                                                    .application
                                                                    .applicationId
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Founder',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              FutureBuilder<
                                                                  UsersRecord>(
                                                                future: (_model.documentRequestCompleter ??= Completer<
                                                                        UsersRecord>()
                                                                      ..complete(
                                                                          UsersRecord.getDocumentOnce(
                                                                              approvalOrgApplicationCopyOrganizationsRecord.orgFounder!)))
                                                                    .future,
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

                                                                  final textUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return Text(
                                                                    textUsersRecord
                                                                        .displayName,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Application Date',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  dateTimeFormat(
                                                                    "yMMMd",
                                                                    approvalOrgApplicationCopyOrganizationsRecord
                                                                        .application
                                                                        .applicationDate!,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Scope',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Text(
                                                                approvalOrgApplicationCopyOrganizationsRecord
                                                                    .scope,
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Purpose',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Text(
                                                                approvalOrgApplicationCopyOrganizationsRecord
                                                                    .purpose,
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Description',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              approvalOrgApplicationCopyOrganizationsRecord
                                                                  .orgDescription,
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Text(
                                                            'Attachments',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    'Letter of Intent & List of Founding Officers ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'APPROVAL_ORG_APPLICATION_COPY_Container_');
                                                                    logFirebaseEvent(
                                                                        'Container_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'resource_viewer',
                                                                      queryParameters:
                                                                          {
                                                                        'resourceFile':
                                                                            serializeParam(
                                                                          approvalOrgApplicationCopyOrganizationsRecord
                                                                              .application
                                                                              .fileIntentAndOfficers,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'resourceName':
                                                                            serializeParam(
                                                                          'Letter of Intent & Officers',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .textBoxBorder,
                                                                        width:
                                                                            0.5,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'View File',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.search,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      if (approvalOrgApplicationCopyOrganizationsRecord
                                                              .type !=
                                                          'Special Interest Organization')
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      15.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      'Letter of Dean\'s Faculty Endorsement',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      ' (SSC/AO)',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'APPROVAL_ORG_APPLICATION_COPY_Container_');
                                                                      logFirebaseEvent(
                                                                          'Container_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'resource_viewer',
                                                                        queryParameters:
                                                                            {
                                                                          'resourceFile':
                                                                              serializeParam(
                                                                            approvalOrgApplicationCopyOrganizationsRecord.application.fileFacultyEndorsement,
                                                                            ParamType.String,
                                                                          ),
                                                                          'resourceName':
                                                                              serializeParam(
                                                                            'Faculty Endorsement',
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).textBoxBorder,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'View File',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Montserrat',
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.search,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    'List of Proposed Projects w/ Budget',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'APPROVAL_ORG_APPLICATION_COPY_Container_');
                                                                    logFirebaseEvent(
                                                                        'Container_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'resource_viewer',
                                                                      queryParameters:
                                                                          {
                                                                        'resourceFile':
                                                                            serializeParam(
                                                                          approvalOrgApplicationCopyOrganizationsRecord
                                                                              .application
                                                                              .fileProjectsAndBudget,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'resourceName':
                                                                            serializeParam(
                                                                          'Proposed Projects & Budget',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .textBoxBorder,
                                                                        width:
                                                                            0.5,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'View File',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.search,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    'Constitution and By-Laws',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'APPROVAL_ORG_APPLICATION_COPY_Container_');
                                                                    logFirebaseEvent(
                                                                        'Container_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'resource_viewer',
                                                                      queryParameters:
                                                                          {
                                                                        'resourceFile':
                                                                            serializeParam(
                                                                          approvalOrgApplicationCopyOrganizationsRecord
                                                                              .application
                                                                              .fileConstiAndBylaws,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'resourceName':
                                                                            serializeParam(
                                                                          'Constitution & By-Laws',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .textBoxBorder,
                                                                        width:
                                                                            0.5,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'View File',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.search,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        if ((approvalOrgApplicationCopyOrganizationsRecord.status == 'Pending') &&
                                            (((approvalOrgApplicationCopyOrganizationsRecord
                                                            .signatories
                                                            .adviserRef ==
                                                        currentUserReference) &&
                                                    (approvalOrgApplicationCopyOrganizationsRecord
                                                            .signatories
                                                            .adviserStatus ==
                                                        'Pending')) ||
                                                ((approvalOrgApplicationCopyOrganizationsRecord.signatories.pcRef ==
                                                        currentUserReference) &&
                                                    (approvalOrgApplicationCopyOrganizationsRecord
                                                            .signatories
                                                            .pcStatus ==
                                                        'Pending')) ||
                                                ((approvalOrgApplicationCopyOrganizationsRecord.signatories.deanRef ==
                                                        currentUserReference) &&
                                                    (approvalOrgApplicationCopyOrganizationsRecord
                                                            .signatories
                                                            .deanStatus ==
                                                        'Pending')) ||
                                                ((approvalOrgApplicationCopyOrganizationsRecord.signatories.csgRef ==
                                                        currentUserReference) &&
                                                    (approvalOrgApplicationCopyOrganizationsRecord
                                                            .signatories
                                                            .csgStatus ==
                                                        'Pending')) ||
                                                ((approvalOrgApplicationCopyOrganizationsRecord.signatories.sdaoRef ==
                                                        currentUserReference) &&
                                                    (approvalOrgApplicationCopyOrganizationsRecord
                                                            .signatories
                                                            .sdaoStatus ==
                                                        'Pending')) ||
                                                ((approvalOrgApplicationCopyOrganizationsRecord
                                                            .signatories
                                                            .academicDirectorRef ==
                                                        currentUserReference) &&
                                                    (approvalOrgApplicationCopyOrganizationsRecord.signatories.academicDirectorStatus == 'Pending'))))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              height: 355.0,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment(0.0, 0),
                                                    child:
                                                        FlutterFlowButtonTabBar(
                                                      useToggleButtonStyle:
                                                          true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                      unselectedLabelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      labelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      unselectedLabelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tabBarSelected,
                                                      unselectedBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tabBarUnselected,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tabBarBorder,
                                                      unselectedBorderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tabBarUnselected,
                                                      borderWidth: 2.0,
                                                      borderRadius: 9.0,
                                                      elevation: 0.0,
                                                      buttonMargin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      tabs: [
                                                        Tab(
                                                          text: 'Revision',
                                                        ),
                                                        Tab(
                                                          text: 'Decline',
                                                        ),
                                                      ],
                                                      controller: _model
                                                          .tabBarController,
                                                      onTap: (i) async {
                                                        [
                                                          () async {},
                                                          () async {}
                                                        ][i]();
                                                      },
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: TabBarView(
                                                      controller: _model
                                                          .tabBarController,
                                                      children: [
                                                        Form(
                                                          key: _model.formKey1,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child: Text(
                                                                      'By placing them under revision, you\'re essentially pressing pause on their progress and requiring them to fulfill certain criteria in order to proceed with their application. At this time, kindly write down the reasons for their revision.',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .justify,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .revisionMessageTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .revisionMessageFocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            'Write down the reason of revision',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).textBoxBorder,
                                                                            width:
                                                                                0.5,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                0.5,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                0.5,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                0.5,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      maxLines:
                                                                          5,
                                                                      maxLength:
                                                                          500,
                                                                      maxLengthEnforcement:
                                                                          MaxLengthEnforcement
                                                                              .enforced,
                                                                      validator: _model
                                                                          .revisionMessageTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'APPROVAL_ORG_APPLICATION_COPY_REVISION_S');
                                                                        logFirebaseEvent(
                                                                            'Button_validate_form');
                                                                        if (_model.formKey1.currentState ==
                                                                                null ||
                                                                            !_model.formKey1.currentState!.validate()) {
                                                                          return;
                                                                        }
                                                                        logFirebaseEvent(
                                                                            'Button_alert_dialog');
                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: Text('Organization Revision'),
                                                                                    content: Text('Are you sure you want to put this organization under revision?'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                        child: Text('Cancel'),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                        child: Text('For Revision'),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                        if (confirmDialogResponse) {
                                                                          logFirebaseEvent(
                                                                              'Button_backend_call');

                                                                          await ApplicationRecord.createDoc(widget!.orgRef!)
                                                                              .set({
                                                                            ...createApplicationRecordData(
                                                                              message: '${valueOrDefault(currentUserDocument?.role, '') == 'Full-Time Faculty' ? 'Adviser' : valueOrDefault(currentUserDocument?.role, '')} has given feedback for revisions.',
                                                                              status: 'Revision',
                                                                              schoolAdmin: currentUserReference,
                                                                              feedback: _model.revisionMessageTextController.text,
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'timestamp': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                          if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                              'Full-Time Faculty') {
                                                                            logFirebaseEvent('Button_backend_call');

                                                                            await widget!.orgRef!.update({
                                                                              ...createOrganizationsRecordData(
                                                                                signatories: createSignatoriesStruct(
                                                                                  adviserFeedback: _model.revisionMessageTextController.text,
                                                                                  signatoryLevel: '1',
                                                                                  signatoryUser: approvalOrgApplicationCopyOrganizationsRecord.orgAdviser,
                                                                                  adviserStatus: 'Revision',
                                                                                  fieldValues: {
                                                                                    'adviser_datetime': FieldValue.serverTimestamp(),
                                                                                  },
                                                                                  clearUnsetFields: false,
                                                                                ),
                                                                                status: 'Revision',
                                                                              ),
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'status_last_updated': FieldValue.serverTimestamp(),
                                                                                },
                                                                              ),
                                                                            });
                                                                          } else if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                              'Program Chair') {
                                                                            logFirebaseEvent('Button_backend_call');

                                                                            await widget!.orgRef!.update({
                                                                              ...createOrganizationsRecordData(
                                                                                signatories: createSignatoriesStruct(
                                                                                  pcFeedback: _model.revisionMessageTextController.text,
                                                                                  signatoryLevel: '1',
                                                                                  signatoryUser: approvalOrgApplicationCopyOrganizationsRecord.orgAdviser,
                                                                                  pcStatus: 'Revision',
                                                                                  fieldValues: {
                                                                                    'pc_datetime': FieldValue.serverTimestamp(),
                                                                                  },
                                                                                  clearUnsetFields: false,
                                                                                ),
                                                                                status: 'Revision',
                                                                              ),
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'status_last_updated': FieldValue.serverTimestamp(),
                                                                                },
                                                                              ),
                                                                            });
                                                                          } else if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                              'Dean') {
                                                                            logFirebaseEvent('Button_backend_call');

                                                                            await widget!.orgRef!.update({
                                                                              ...createOrganizationsRecordData(
                                                                                signatories: createSignatoriesStruct(
                                                                                  signatoryLevel: '1',
                                                                                  signatoryUser: approvalOrgApplicationCopyOrganizationsRecord.orgAdviser,
                                                                                  deanFeedback: _model.revisionMessageTextController.text,
                                                                                  deanStatus: 'Revision',
                                                                                  fieldValues: {
                                                                                    'dean_datetime': FieldValue.serverTimestamp(),
                                                                                  },
                                                                                  clearUnsetFields: false,
                                                                                ),
                                                                                status: 'Revision',
                                                                              ),
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'status_last_updated': FieldValue.serverTimestamp(),
                                                                                },
                                                                              ),
                                                                            });
                                                                          } else if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                              'Central Student Government') {
                                                                            logFirebaseEvent('Button_backend_call');

                                                                            await widget!.orgRef!.update({
                                                                              ...createOrganizationsRecordData(
                                                                                signatories: createSignatoriesStruct(
                                                                                  signatoryLevel: '1',
                                                                                  signatoryUser: approvalOrgApplicationCopyOrganizationsRecord.orgAdviser,
                                                                                  csgFeedback: _model.revisionMessageTextController.text,
                                                                                  csgStatus: 'Revision',
                                                                                  fieldValues: {
                                                                                    'csg_datetime': FieldValue.serverTimestamp(),
                                                                                  },
                                                                                  clearUnsetFields: false,
                                                                                ),
                                                                                status: 'Revision',
                                                                              ),
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'status_last_updated': FieldValue.serverTimestamp(),
                                                                                },
                                                                              ),
                                                                            });
                                                                          } else if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                              'Coordinator') {
                                                                            logFirebaseEvent('Button_backend_call');

                                                                            await widget!.orgRef!.update({
                                                                              ...createOrganizationsRecordData(
                                                                                signatories: createSignatoriesStruct(
                                                                                  signatoryLevel: '1',
                                                                                  signatoryUser: approvalOrgApplicationCopyOrganizationsRecord.orgAdviser,
                                                                                  sdaoFeedback: _model.revisionMessageTextController.text,
                                                                                  sdaoStatus: 'Revision',
                                                                                  fieldValues: {
                                                                                    'sdao_datetime': FieldValue.serverTimestamp(),
                                                                                  },
                                                                                  clearUnsetFields: false,
                                                                                ),
                                                                                status: 'Revision',
                                                                              ),
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'status_last_updated': FieldValue.serverTimestamp(),
                                                                                },
                                                                              ),
                                                                            });
                                                                          } else {
                                                                            logFirebaseEvent('Button_backend_call');

                                                                            await widget!.orgRef!.update({
                                                                              ...createOrganizationsRecordData(
                                                                                signatories: createSignatoriesStruct(
                                                                                  signatoryLevel: '1',
                                                                                  signatoryUser: approvalOrgApplicationCopyOrganizationsRecord.orgAdviser,
                                                                                  academicDirectorFeedback: _model.revisionMessageTextController.text,
                                                                                  academicDirectorStatus: 'Revision',
                                                                                  fieldValues: {
                                                                                    'academic_director_datetime': FieldValue.serverTimestamp(),
                                                                                  },
                                                                                  clearUnsetFields: false,
                                                                                ),
                                                                                status: 'Revision',
                                                                              ),
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'status_last_updated': FieldValue.serverTimestamp(),
                                                                                },
                                                                              ),
                                                                            });
                                                                          }

                                                                          logFirebaseEvent(
                                                                              'Button_alert_dialog');
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: Text('Organization Revision'),
                                                                                  content: Text('Organization is now under revision. They will resubmit their application for re-approval.'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Okay'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        } else {
                                                                          return;
                                                                        }

                                                                        logFirebaseEvent(
                                                                            'Button_refresh_database_request');
                                                                        safeSetState(() =>
                                                                            _model.documentRequestCompleter =
                                                                                null);
                                                                        await _model
                                                                            .waitForDocumentRequestCompleted();
                                                                        logFirebaseEvent(
                                                                            'Button_reset_form_fields');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .revisionMessageTextController
                                                                              ?.clear();
                                                                          _model
                                                                              .declineMessageTextController
                                                                              ?.clear();
                                                                        });
                                                                      },
                                                                      text:
                                                                          'Revision Status',
                                                                      icon:
                                                                          Icon(
                                                                        FFIcons
                                                                            .kpause5,
                                                                        size:
                                                                            15.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            30.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .buttonVisit,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: Colors.white,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(2.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'PANG ERROR LANG',
                                                                      icon:
                                                                          Icon(
                                                                        FFIcons
                                                                            .kpause5,
                                                                        size:
                                                                            15.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            30.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .buttonVisit,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: Colors.white,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(2.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Form(
                                                          key: _model.formKey2,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Text(
                                                                    'By declining their organization application, they\'re unable to proceed further in the process. Please specify the reason for the application\'s rejection below.',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .declineMessageTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .declineMessageFocusNode,
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Write down the reason for declining the organization',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).textBoxBorder,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    maxLines: 5,
                                                                    maxLength:
                                                                        500,
                                                                    maxLengthEnforcement:
                                                                        MaxLengthEnforcement
                                                                            .enforced,
                                                                    validator: _model
                                                                        .declineMessageTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'APPROVAL_ORG_APPLICATION_COPY_DECLINE_OR');
                                                                      logFirebaseEvent(
                                                                          'Button_validate_form');
                                                                      if (_model.formKey2.currentState ==
                                                                              null ||
                                                                          !_model
                                                                              .formKey2
                                                                              .currentState!
                                                                              .validate()) {
                                                                        return;
                                                                      }
                                                                      logFirebaseEvent(
                                                                          'Button_alert_dialog');
                                                                      var confirmDialogResponse = await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: Text('Decline Organization'),
                                                                                  content: Text('Are you sure you want to decline this organization?'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                      child: Text('Cancel'),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                      child: Text('Decline'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                      if (confirmDialogResponse) {
                                                                        logFirebaseEvent(
                                                                            'Button_backend_call');

                                                                        await ApplicationRecord.createDoc(widget!.orgRef!)
                                                                            .set({
                                                                          ...createApplicationRecordData(
                                                                            message:
                                                                                'The application has been declined by ${valueOrDefault(currentUserDocument?.role, '') == 'Full-Time Faculty' ? 'adviser' : valueOrDefault(currentUserDocument?.role, '')}.',
                                                                            status:
                                                                                'Declined',
                                                                            schoolAdmin:
                                                                                currentUserReference,
                                                                            feedback:
                                                                                _model.declineMessageTextController.text,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'timestamp': FieldValue.serverTimestamp(),
                                                                            },
                                                                          ),
                                                                        });
                                                                        if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                            'Full-Time Faculty') {
                                                                          logFirebaseEvent(
                                                                              'Button_backend_call');

                                                                          await widget!
                                                                              .orgRef!
                                                                              .update({
                                                                            ...createOrganizationsRecordData(
                                                                              signatories: createSignatoriesStruct(
                                                                                adviserFeedback: _model.declineMessageTextController.text,
                                                                                adviserStatus: 'Declined',
                                                                                fieldValues: {
                                                                                  'adviser_datetime': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                              status: 'Declined',
                                                                              application: createOrgApplicationStruct(
                                                                                fieldValues: {
                                                                                  'applicaton_completed': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'status_last_updated': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        } else if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                            'Program Chair') {
                                                                          logFirebaseEvent(
                                                                              'Button_backend_call');

                                                                          await widget!
                                                                              .orgRef!
                                                                              .update({
                                                                            ...createOrganizationsRecordData(
                                                                              signatories: createSignatoriesStruct(
                                                                                pcFeedback: _model.declineMessageTextController.text,
                                                                                pcStatus: 'Declined',
                                                                                fieldValues: {
                                                                                  'pc_datetime': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                              status: 'Declined',
                                                                              application: createOrgApplicationStruct(
                                                                                fieldValues: {
                                                                                  'applicaton_completed': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'status_last_updated': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        } else if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                            'Dean') {
                                                                          logFirebaseEvent(
                                                                              'Button_backend_call');

                                                                          await widget!
                                                                              .orgRef!
                                                                              .update({
                                                                            ...createOrganizationsRecordData(
                                                                              signatories: createSignatoriesStruct(
                                                                                deanFeedback: _model.declineMessageTextController.text,
                                                                                deanStatus: 'Declined',
                                                                                fieldValues: {
                                                                                  'dean_datetime': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                              status: 'Declined',
                                                                              application: createOrgApplicationStruct(
                                                                                fieldValues: {
                                                                                  'applicaton_completed': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'status_last_updated': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        } else if (valueOrDefault(currentUserDocument?.role, '') ==
                                                                            'Central Student Government') {
                                                                          logFirebaseEvent(
                                                                              'Button_backend_call');

                                                                          await widget!
                                                                              .orgRef!
                                                                              .update({
                                                                            ...createOrganizationsRecordData(
                                                                              signatories: createSignatoriesStruct(
                                                                                csgFeedback: _model.declineMessageTextController.text,
                                                                                csgStatus: 'Declined',
                                                                                fieldValues: {
                                                                                  'csg_datetime': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                              status: 'Declined',
                                                                              application: createOrgApplicationStruct(
                                                                                fieldValues: {
                                                                                  'applicaton_completed': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'status_last_updated': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        } else if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'Coordinator') {
                                                                          logFirebaseEvent(
                                                                              'Button_backend_call');

                                                                          await widget!
                                                                              .orgRef!
                                                                              .update({
                                                                            ...createOrganizationsRecordData(
                                                                              signatories: createSignatoriesStruct(
                                                                                sdaoFeedback: _model.declineMessageTextController.text,
                                                                                sdaoStatus: 'Declined',
                                                                                fieldValues: {
                                                                                  'sdao_datetime': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                              status: 'Declined',
                                                                              application: createOrgApplicationStruct(
                                                                                fieldValues: {
                                                                                  'applicaton_completed': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'status_last_updated': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Button_backend_call');

                                                                          await widget!
                                                                              .orgRef!
                                                                              .update({
                                                                            ...createOrganizationsRecordData(
                                                                              signatories: createSignatoriesStruct(
                                                                                academicDirectorFeedback: _model.declineMessageTextController.text,
                                                                                academicDirectorStatus: 'Declined',
                                                                                fieldValues: {
                                                                                  'academic_director_datetime': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                              status: 'Declined',
                                                                              application: createOrgApplicationStruct(
                                                                                fieldValues: {
                                                                                  'applicaton_completed': FieldValue.serverTimestamp(),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'status_last_updated': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        }

                                                                        logFirebaseEvent(
                                                                            'Button_alert_dialog');
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return WebViewAware(
                                                                              child: AlertDialog(
                                                                                title: Text('Organization Declined'),
                                                                                content: Text('Organization has been declined.'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: Text('Okay'),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                        logFirebaseEvent(
                                                                            'Button_refresh_database_request');
                                                                        safeSetState(() =>
                                                                            _model.documentRequestCompleter =
                                                                                null);
                                                                        await _model
                                                                            .waitForDocumentRequestCompleted();
                                                                        logFirebaseEvent(
                                                                            'Button_reset_form_fields');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .revisionMessageTextController
                                                                              ?.clear();
                                                                          _model
                                                                              .declineMessageTextController
                                                                              ?.clear();
                                                                        });
                                                                      } else {
                                                                        return;
                                                                      }
                                                                    },
                                                                    text:
                                                                        'Decline Organization',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .close,
                                                                      size:
                                                                          15.0,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          30.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2.0),
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
                                                ],
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
                      ],
                    ),
                  ),
                  if ((approvalOrgApplicationCopyOrganizationsRecord.status ==
                          'Pending') &&
                      (approvalOrgApplicationCopyOrganizationsRecord
                              .signatories.signatoryUser ==
                          currentUserReference))
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 30.0),
                        child: StreamBuilder<DefaultsRecord>(
                          stream: DefaultsRecord.getDocument(
                              FFAppState().defaultID!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitChasingDots(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }

                            final buttonDefaultsRecord = snapshot.data!;

                            return FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Approve Organization',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            );
                          },
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
