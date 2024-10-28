import '/backend/backend.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/search_not_found_list/search_not_found_list_widget.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'admin_logs_model.dart';
export 'admin_logs_model.dart';

class AdminLogsWidget extends StatefulWidget {
  const AdminLogsWidget({super.key});

  @override
  State<AdminLogsWidget> createState() => _AdminLogsWidgetState();
}

class _AdminLogsWidgetState extends State<AdminLogsWidget>
    with TickerProviderStateMixin {
  late AdminLogsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminLogsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'admin_logs'});
    _model.contentSearchTextController ??= TextEditingController();
    _model.contentSearchFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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

    return StreamBuilder<List<ActivityLogsRecord>>(
      stream: FFAppState().activityLogs(
        requestFn: () => queryActivityLogsRecord(
          queryBuilder: (activityLogsRecord) =>
              activityLogsRecord.orderBy('done_when', descending: true),
          limit: 100,
        ),
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
        List<ActivityLogsRecord> adminLogsActivityLogsRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: wrapWithModel(
                      model: _model.titleHeaderComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleHeaderComponentWidget(
                        titleText: 'Audit Logs',
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ADMIN_LOGS_Container_xqsj6oin_ON_TAP');
                            logFirebaseEvent('subtitle_header_navigate_to');

                            context.pushNamed('admin_logs_delete');
                          },
                          child: wrapWithModel(
                            model: _model.subtitleHeaderModel,
                            updateCallback: () => safeSetState(() {}),
                            child: SubtitleHeaderWidget(
                              mainTitle: 'Logs',
                              subText:
                                  'View any changes or updates made by the users within the application.',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller:
                                      _model.contentSearchTextController,
                                  focusNode: _model.contentSearchFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.contentSearchTextController',
                                    Duration(milliseconds: 200),
                                    () async {
                                      logFirebaseEvent(
                                          'ADMIN_LOGS_content_search_ON_TEXTFIELD_C');
                                      logFirebaseEvent(
                                          'content_search_update_page_state');
                                      _model.logType = 0;
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'content_search_simple_search');
                                      safeSetState(() {
                                        _model.simpleSearchResults1 =
                                            TextSearch(
                                          adminLogsActivityLogsRecordList
                                              .map(
                                                (record) =>
                                                    TextSearchItem.fromTerms(
                                                        record, [
                                                  record.doneByRole!,
                                                  record.description!,
                                                  record.type!
                                                ]),
                                              )
                                              .toList(),
                                        )
                                                .search(_model
                                                    .contentSearchTextController
                                                    .text)
                                                .map((r) => r.object)
                                                .toList();
                                        ;
                                      });
                                      logFirebaseEvent(
                                          'content_search_update_app_state');
                                      FFAppState().searchActive = true;
                                      safeSetState(() {});
                                    },
                                  ),
                                  autofocus: false,
                                  textInputAction: TextInputAction.search,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Search',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search_sharp,
                                      size: 20.0,
                                    ),
                                    suffixIcon: _model
                                            .contentSearchTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.contentSearchTextController
                                                  ?.clear();
                                              logFirebaseEvent(
                                                  'ADMIN_LOGS_content_search_ON_TEXTFIELD_C');
                                              logFirebaseEvent(
                                                  'content_search_update_page_state');
                                              _model.logType = 0;
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'content_search_simple_search');
                                              safeSetState(() {
                                                _model.simpleSearchResults1 =
                                                    TextSearch(
                                                  adminLogsActivityLogsRecordList
                                                      .map(
                                                        (record) =>
                                                            TextSearchItem
                                                                .fromTerms(
                                                                    record, [
                                                          record.doneByRole!,
                                                          record.description!,
                                                          record.type!
                                                        ]),
                                                      )
                                                      .toList(),
                                                )
                                                        .search(_model
                                                            .contentSearchTextController
                                                            .text)
                                                        .map((r) => r.object)
                                                        .toList();
                                                ;
                                              });
                                              logFirebaseEvent(
                                                  'content_search_update_app_state');
                                              FFAppState().searchActive = true;
                                              safeSetState(() {});
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              size: 20.0,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .contentSearchTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              ToggleIcon(
                                onPressed: () async {
                                  safeSetState(() =>
                                      _model.filterLevel = !_model.filterLevel);
                                },
                                value: _model.filterLevel,
                                onIcon: Icon(
                                  FFIcons.ksetting45,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 25.0,
                                ),
                                offIcon: Icon(
                                  FFIcons.ksetting44,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (_model.filterLevel == true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
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
                                          'ADMIN_LOGS_Container_syr4rop6_ON_TAP');
                                      logFirebaseEvent(
                                          'Container_update_page_state');
                                      _model.logType = 1;
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'Container_simple_search');
                                      safeSetState(() {
                                        _model.simpleSearchResults2 =
                                            TextSearch(
                                          adminLogsActivityLogsRecordList
                                              .map(
                                                (record) =>
                                                    TextSearchItem.fromTerms(
                                                        record,
                                                        [record.doneByRole!]),
                                              )
                                              .toList(),
                                        )
                                                .search('Student')
                                                .map((r) => r.object)
                                                .toList();
                                        ;
                                      });
                                      logFirebaseEvent(
                                          'Container_update_app_state');
                                      FFAppState().searchActive = true;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: _model.logType == 1
                                            ? Color(0xFFE1E1E1)
                                            : FlutterFlowTheme.of(context)
                                                .tabBarUnselected,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Student',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
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
                                        'ADMIN_LOGS_Container_iennu7ee_ON_TAP');
                                    logFirebaseEvent(
                                        'Container_update_page_state');
                                    _model.logType = 2;
                                    safeSetState(() {});
                                    logFirebaseEvent('Container_simple_search');
                                    safeSetState(() {
                                      _model.simpleSearchResults3 = TextSearch(
                                        adminLogsActivityLogsRecordList
                                            .map(
                                              (record) =>
                                                  TextSearchItem.fromTerms(
                                                      record,
                                                      [record.doneByRole!]),
                                            )
                                            .toList(),
                                      )
                                          .search('Super Admin')
                                          .map((r) => r.object)
                                          .toList();
                                      ;
                                    });
                                    logFirebaseEvent(
                                        'Container_update_app_state');
                                    FFAppState().searchActive = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: _model.logType == 2
                                          ? Color(0xFFE1E1E1)
                                          : FlutterFlowTheme.of(context)
                                              .tabBarUnselected,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Super Admin',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
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
                                        'ADMIN_LOGS_Container_nmkq8x38_ON_TAP');
                                    logFirebaseEvent(
                                        'Container_update_page_state');
                                    _model.logType = 3;
                                    safeSetState(() {});
                                    logFirebaseEvent('Container_simple_search');
                                    safeSetState(() {
                                      _model.simpleSearchResults4 = TextSearch(
                                        adminLogsActivityLogsRecordList
                                            .map(
                                              (record) =>
                                                  TextSearchItem.fromTerms(
                                                      record,
                                                      [record.doneByRole!]),
                                            )
                                            .toList(),
                                      )
                                          .search('Program Chair')
                                          .map((r) => r.object)
                                          .toList();
                                      ;
                                    });
                                    logFirebaseEvent(
                                        'Container_update_app_state');
                                    FFAppState().searchActive = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: _model.logType == 3
                                          ? Color(0xFFE1E1E1)
                                          : FlutterFlowTheme.of(context)
                                              .tabBarUnselected,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Program Chair',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
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
                                        'ADMIN_LOGS_Container_tydrt7e3_ON_TAP');
                                    logFirebaseEvent(
                                        'Container_update_page_state');
                                    _model.logType = 4;
                                    safeSetState(() {});
                                    logFirebaseEvent('Container_simple_search');
                                    safeSetState(() {
                                      _model.simpleSearchResults5 = TextSearch(
                                        adminLogsActivityLogsRecordList
                                            .map(
                                              (record) =>
                                                  TextSearchItem.fromTerms(
                                                      record,
                                                      [record.doneByRole!]),
                                            )
                                            .toList(),
                                      )
                                          .search('Coordinator')
                                          .map((r) => r.object)
                                          .toList();
                                      ;
                                    });
                                    logFirebaseEvent(
                                        'Container_update_app_state');
                                    FFAppState().searchActive = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: _model.logType == 4
                                          ? Color(0xFFE1E1E1)
                                          : FlutterFlowTheme.of(context)
                                              .tabBarUnselected,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Coordinator',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                                          'ADMIN_LOGS_Container_58dt34ga_ON_TAP');
                                      logFirebaseEvent(
                                          'Container_update_page_state');
                                      _model.logType = 5;
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'Container_simple_search');
                                      safeSetState(() {
                                        _model.simpleSearchResults6 =
                                            TextSearch(
                                          adminLogsActivityLogsRecordList
                                              .map(
                                                (record) =>
                                                    TextSearchItem.fromTerms(
                                                        record,
                                                        [record.doneByRole!]),
                                              )
                                              .toList(),
                                        )
                                                .search('Full-Time Faculty')
                                                .map((r) => r.object)
                                                .toList();
                                        ;
                                      });
                                      logFirebaseEvent(
                                          'Container_update_app_state');
                                      FFAppState().searchActive = true;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: _model.logType == 5
                                            ? Color(0xFFE1E1E1)
                                            : FlutterFlowTheme.of(context)
                                                .tabBarUnselected,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Full-Time Faculty',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                    ],
                  ),
                  if (!FFAppState().searchActive)
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Builder(
                              builder: (context) {
                                final logs =
                                    adminLogsActivityLogsRecordList.toList();
                                if (logs.isEmpty) {
                                  return EmptyListWidget(
                                    emptyWhat: 'logs',
                                  );
                                }

                                return RefreshIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
                                  onRefresh: () async {},
                                  child: ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: logs.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 10.0),
                                    itemBuilder: (context, logsIndex) {
                                      final logsItem = logs[logsIndex];
                                      return Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          if (true /* Warning: Trying to access variable not yet defined. */)
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 0.0),
                                                child:
                                                    FutureBuilder<UsersRecord>(
                                                  future: UsersRecord
                                                      .getDocumentOnce(
                                                          logsItem.doneBy!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              SpinKitChasingDots(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }

                                                    final containerUsersRecord =
                                                        snapshot.data!;

                                                    return Container(
                                                      width: double.infinity,
                                                      height: 79.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              5.0),
                                                                  child:
                                                                      Container(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        containerUsersRecord.photoUrl != null &&
                                                                                containerUsersRecord.photoUrl != ''
                                                                            ? valueOrDefault<String>(
                                                                                containerUsersRecord.photoUrl,
                                                                                'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnub_logo.jpg?alt=media&token=2bf8d1ce-43ca-411c-819d-41d6b0d36b81',
                                                                              )
                                                                            : 'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnub_logo.jpg?alt=media&token=2bf8d1ce-43ca-411c-819d-41d6b0d36b81',
                                                                        'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnub_logo.jpg?alt=media&token=2bf8d1ce-43ca-411c-819d-41d6b0d36b81',
                                                                      ),
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Flexible(
                                                                    child: Text(
                                                                      logsItem
                                                                          .description,
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
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: valueOrDefault<String>(
                                                                                logsItem.doneByRole != null && logsItem.doneByRole != '' ? containerUsersRecord.role : 'User',
                                                                                'User',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Montserrat',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: ' | ',
                                                                              style: TextStyle(),
                                                                            ),
                                                                            TextSpan(
                                                                              text: dateTimeFormat(
                                                                                "relative",
                                                                                logsItem.doneWhen!,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              style: TextStyle(),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation1']!);
                                                  },
                                                ),
                                              ),
                                            ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'rowOnPageLoadAnimation1']!);
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (FFAppState().searchActive)
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Builder(
                              builder: (context) {
                                final searchlogs = () {
                                  if (_model.logType == 0) {
                                    return _model.simpleSearchResults1;
                                  } else if (_model.logType == 1) {
                                    return _model.simpleSearchResults2;
                                  } else if (_model.logType == 2) {
                                    return _model.simpleSearchResults3;
                                  } else if (_model.logType == 3) {
                                    return _model.simpleSearchResults4;
                                  } else if (_model.logType == 4) {
                                    return _model.simpleSearchResults5;
                                  } else {
                                    return _model.simpleSearchResults6;
                                  }
                                }()
                                    .toList();
                                if (searchlogs.isEmpty) {
                                  return SearchNotFoundListWidget(
                                    emptyWhat:
                                        _model.contentSearchTextController.text,
                                  );
                                }

                                return RefreshIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
                                  onRefresh: () async {},
                                  child: ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: searchlogs.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 10.0),
                                    itemBuilder: (context, searchlogsIndex) {
                                      final searchlogsItem =
                                          searchlogs[searchlogsIndex];
                                      return Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          if (true /* Warning: Trying to access variable not yet defined. */)
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 0.0),
                                                child:
                                                    FutureBuilder<UsersRecord>(
                                                  future: UsersRecord
                                                      .getDocumentOnce(
                                                          searchlogsItem
                                                              .doneBy!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              SpinKitChasingDots(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }

                                                    final containerUsersRecord =
                                                        snapshot.data!;

                                                    return Container(
                                                      width: double.infinity,
                                                      height: 79.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              5.0),
                                                                  child:
                                                                      Container(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        containerUsersRecord.photoUrl != null &&
                                                                                containerUsersRecord.photoUrl != ''
                                                                            ? valueOrDefault<String>(
                                                                                containerUsersRecord.photoUrl,
                                                                                'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnub_logo.jpg?alt=media&token=2bf8d1ce-43ca-411c-819d-41d6b0d36b81',
                                                                              )
                                                                            : 'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnub_logo.jpg?alt=media&token=2bf8d1ce-43ca-411c-819d-41d6b0d36b81',
                                                                        'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2Fnub_logo.jpg?alt=media&token=2bf8d1ce-43ca-411c-819d-41d6b0d36b81',
                                                                      ),
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Flexible(
                                                                    child: Text(
                                                                      searchlogsItem
                                                                          .description,
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
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: valueOrDefault<String>(
                                                                                searchlogsItem.doneByRole != null && searchlogsItem.doneByRole != '' ? containerUsersRecord.role : 'User',
                                                                                'User',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Montserrat',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: ' | ',
                                                                              style: TextStyle(),
                                                                            ),
                                                                            TextSpan(
                                                                              text: dateTimeFormat(
                                                                                "relative",
                                                                                searchlogsItem.doneWhen!,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              style: TextStyle(),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation2']!);
                                                  },
                                                ),
                                              ),
                                            ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'rowOnPageLoadAnimation2']!);
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
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
