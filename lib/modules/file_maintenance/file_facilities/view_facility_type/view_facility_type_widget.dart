import '/backend/backend.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/search_not_found_list/search_not_found_list_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'view_facility_type_model.dart';
export 'view_facility_type_model.dart';

class ViewFacilityTypeWidget extends StatefulWidget {
  const ViewFacilityTypeWidget({super.key});

  @override
  State<ViewFacilityTypeWidget> createState() => _ViewFacilityTypeWidgetState();
}

class _ViewFacilityTypeWidgetState extends State<ViewFacilityTypeWidget>
    with TickerProviderStateMixin {
  late ViewFacilityTypeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewFacilityTypeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'view_facility_type'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('VIEW_FACILITY_TYPE_view_facility_type_ON');
      logFirebaseEvent('view_facility_type_update_app_state');
      FFAppState().searchActive = false;
      safeSetState(() {});
    });

    _model.facilitySearchTextController ??= TextEditingController();
    _model.facilitySearchFocusNode ??= FocusNode();

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

    return StreamBuilder<List<FacilityTypesRecord>>(
      stream: queryFacilityTypesRecord(
        queryBuilder: (facilityTypesRecord) =>
            facilityTypesRecord.orderBy('facility_name'),
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
        List<FacilityTypesRecord> viewFacilityTypeFacilityTypesRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.titleHeaderComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleHeaderComponentWidget(
                        titleText: 'File Maintenance',
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
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
                                      'Facility Type',
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
                                        'Maintains the type of facilities the the university offers.',
                                        textAlign: TextAlign.justify,
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 10.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.facilitySearchTextController,
                                  focusNode: _model.facilitySearchFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.facilitySearchTextController',
                                    Duration(milliseconds: 200),
                                    () async {
                                      logFirebaseEvent(
                                          'VIEW_FACILITY_TYPE_facility_search_ON_TE');
                                      if (_model.facilitySearchTextController
                                                  .text !=
                                              null &&
                                          _model.facilitySearchTextController
                                                  .text !=
                                              '') {
                                        logFirebaseEvent(
                                            'facility_search_simple_search');
                                        safeSetState(() {
                                          _model
                                              .simpleSearchResults = TextSearch(
                                            viewFacilityTypeFacilityTypesRecordList
                                                .map(
                                                  (record) =>
                                                      TextSearchItem.fromTerms(
                                                          record, [
                                                    record.facilityName!
                                                  ]),
                                                )
                                                .toList(),
                                          )
                                              .search(_model
                                                  .facilitySearchTextController
                                                  .text)
                                              .map((r) => r.object)
                                              .toList();
                                          ;
                                        });
                                        logFirebaseEvent(
                                            'facility_search_update_app_state');
                                        FFAppState().searchActive = true;
                                        safeSetState(() {});
                                      } else {
                                        logFirebaseEvent(
                                            'facility_search_update_app_state');
                                        FFAppState().searchActive = false;
                                        safeSetState(() {});
                                      }
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
                                        color: FlutterFlowTheme.of(context)
                                            .textBoxBorder,
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
                                    suffixIcon: _model
                                            .facilitySearchTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model
                                                  .facilitySearchTextController
                                                  ?.clear();
                                              logFirebaseEvent(
                                                  'VIEW_FACILITY_TYPE_facility_search_ON_TE');
                                              if (_model.facilitySearchTextController
                                                          .text !=
                                                      null &&
                                                  _model.facilitySearchTextController
                                                          .text !=
                                                      '') {
                                                logFirebaseEvent(
                                                    'facility_search_simple_search');
                                                safeSetState(() {
                                                  _model.simpleSearchResults =
                                                      TextSearch(
                                                    viewFacilityTypeFacilityTypesRecordList
                                                        .map(
                                                          (record) =>
                                                              TextSearchItem
                                                                  .fromTerms(
                                                                      record, [
                                                            record.facilityName!
                                                          ]),
                                                        )
                                                        .toList(),
                                                  )
                                                          .search(_model
                                                              .facilitySearchTextController
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList();
                                                  ;
                                                });
                                                logFirebaseEvent(
                                                    'facility_search_update_app_state');
                                                FFAppState().searchActive =
                                                    true;
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'facility_search_update_app_state');
                                                FFAppState().searchActive =
                                                    false;
                                                safeSetState(() {});
                                              }

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
                                      .facilitySearchTextControllerValidator
                                      .asValidator(context),
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
                                    'VIEW_FACILITY_TYPE_CircleImage_h2a0h7gj_');
                                logFirebaseEvent('CircleImage_navigate_to');

                                context.pushNamed(
                                  'maintenance_facility_type',
                                  queryParameters: {
                                    'isNew': serializeParam(
                                      true,
                                      ParamType.bool,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/Rooms.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (!FFAppState().searchActive)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: Builder(
                                    builder: (context) {
                                      final facilitySearch =
                                          viewFacilityTypeFacilityTypesRecordList
                                              .toList();
                                      if (facilitySearch.isEmpty) {
                                        return EmptyListWidget(
                                          emptyWhat: 'facility type',
                                        );
                                      }

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: facilitySearch.length,
                                        itemBuilder:
                                            (context, facilitySearchIndex) {
                                          final facilitySearchItem =
                                              facilitySearch[
                                                  facilitySearchIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 67.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/Rooms.png',
                                                                        width:
                                                                            70.0,
                                                                        height:
                                                                            100.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Flexible(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    AutoSizeText(
                                                                      facilitySearchItem
                                                                          .facilityName
                                                                          .maybeHandleOverflow(
                                                                        maxChars:
                                                                            40,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontSize:
                                                                                15.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: InkWell(
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
                                                                        'VIEW_FACILITY_TYPE_Icon_xnbyf5rt_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'maintenance_facility_type',
                                                                      queryParameters:
                                                                          {
                                                                        'isNew':
                                                                            serializeParam(
                                                                          false,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'facilityName':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .facilityName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'facilityNickname':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .facilityNickname,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'facilityDescription':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .facilityDescription,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'facilityReference':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .reference,
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
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );

                                                                    logFirebaseEvent(
                                                                        'Icon_reset_form_fields');
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .facilitySearchTextController
                                                                          ?.clear();
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Icon_update_app_state');
                                                                    FFAppState()
                                                                            .searchActive =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .kedit,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 21.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: InkWell(
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
                                                                        'VIEW_FACILITY_TYPE_Icon_o0jsoc2h_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_alert_dialog');
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: Text('Delete Facility Type'),
                                                                                    content: Text('Are you sure you want to delete this facility type?'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                        child: Text('Cancel'),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                        child: Text('Confirm'),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                    if (confirmDialogResponse) {
                                                                      logFirebaseEvent(
                                                                          'Icon_backend_call');
                                                                      await facilitySearchItem
                                                                          .reference
                                                                          .delete();
                                                                      logFirebaseEvent(
                                                                          'Icon_action_block');
                                                                      await action_blocks
                                                                          .logs(
                                                                        context,
                                                                        type:
                                                                            'deleted',
                                                                        module:
                                                                            'facility type',
                                                                        doneToName:
                                                                            facilitySearchItem.facilityName,
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Icon_alert_dialog');
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                AlertDialog(
                                                                              title: Text('Deleted Facility Type'),
                                                                              content: Text('Facility type  has been successfully deleted.'),
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
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Icon_reset_form_fields');
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .facilitySearchTextController
                                                                          ?.clear();
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Icon_update_app_state');
                                                                    FFAppState()
                                                                            .searchActive =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .ktrash,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation1']!),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'rowOnPageLoadAnimation1']!),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              if (FFAppState().searchActive)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: Builder(
                                    builder: (context) {
                                      final facilitySearch =
                                          _model.simpleSearchResults.toList();
                                      if (facilitySearch.isEmpty) {
                                        return SearchNotFoundListWidget(
                                          emptyWhat: _model
                                              .facilitySearchTextController
                                              .text,
                                        );
                                      }

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: facilitySearch.length,
                                        itemBuilder:
                                            (context, facilitySearchIndex) {
                                          final facilitySearchItem =
                                              facilitySearch[
                                                  facilitySearchIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 67.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/Rooms.png',
                                                                        width:
                                                                            70.0,
                                                                        height:
                                                                            100.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Flexible(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    AutoSizeText(
                                                                      facilitySearchItem
                                                                          .facilityName
                                                                          .maybeHandleOverflow(
                                                                        maxChars:
                                                                            40,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontSize:
                                                                                15.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: InkWell(
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
                                                                        'VIEW_FACILITY_TYPE_Icon_m0cl8qx5_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'maintenance_facility_type',
                                                                      queryParameters:
                                                                          {
                                                                        'isNew':
                                                                            serializeParam(
                                                                          false,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'facilityName':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .facilityName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'facilityNickname':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .facilityNickname,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'facilityDescription':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .facilityDescription,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'facilityReference':
                                                                            serializeParam(
                                                                          facilitySearchItem
                                                                              .reference,
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
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );

                                                                    logFirebaseEvent(
                                                                        'Icon_reset_form_fields');
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .facilitySearchTextController
                                                                          ?.clear();
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Icon_update_app_state');
                                                                    FFAppState()
                                                                            .searchActive =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .kedit,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 21.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: InkWell(
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
                                                                        'VIEW_FACILITY_TYPE_Icon_9388tl8f_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_alert_dialog');
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: Text('Delete Program'),
                                                                                    content: Text('Are you sure you want to delete this office?'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                        child: Text('Cancel'),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                        child: Text('Confirm'),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                    if (confirmDialogResponse) {
                                                                      logFirebaseEvent(
                                                                          'Icon_backend_call');
                                                                      await facilitySearchItem
                                                                          .reference
                                                                          .delete();
                                                                      logFirebaseEvent(
                                                                          'Icon_action_block');
                                                                      await action_blocks
                                                                          .logs(
                                                                        context,
                                                                        type:
                                                                            'deleted',
                                                                        module:
                                                                            'facility type',
                                                                        doneToName:
                                                                            facilitySearchItem.facilityName,
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'Icon_alert_dialog');
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                AlertDialog(
                                                                              title: Text('Deleted Program'),
                                                                              content: Text('Office has been successfully deleted.'),
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
                                                                    }
                                                                    logFirebaseEvent(
                                                                        'Icon_reset_form_fields');
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .facilitySearchTextController
                                                                          ?.clear();
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Icon_update_app_state');
                                                                    FFAppState()
                                                                            .searchActive =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .ktrash,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation2']!),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'rowOnPageLoadAnimation2']!),
                                          );
                                        },
                                      );
                                    },
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
          ),
        );
      },
    );
  }
}
