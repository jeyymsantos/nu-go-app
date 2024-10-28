import '/backend/backend.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/search_not_found_list/search_not_found_list_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'view_equipment_model.dart';
export 'view_equipment_model.dart';

class ViewEquipmentWidget extends StatefulWidget {
  const ViewEquipmentWidget({super.key});

  @override
  State<ViewEquipmentWidget> createState() => _ViewEquipmentWidgetState();
}

class _ViewEquipmentWidgetState extends State<ViewEquipmentWidget>
    with TickerProviderStateMixin {
  late ViewEquipmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewEquipmentModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'view_equipment'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('VIEW_EQUIPMENT_view_equipment_ON_INIT_ST');
      logFirebaseEvent('view_equipment_update_app_state');
      FFAppState().searchActive = false;
      safeSetState(() {});
    });

    _model.equipmentSearchTextController ??= TextEditingController();
    _model.equipmentSearchFocusNode ??= FocusNode();

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
      'textOnPageLoadAnimation1': AnimationInfo(
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
      'textOnPageLoadAnimation2': AnimationInfo(
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

    return StreamBuilder<List<EquipmentsRecord>>(
      stream: queryEquipmentsRecord(
        queryBuilder: (equipmentsRecord) =>
            equipmentsRecord.orderBy('equipment_name'),
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
        List<EquipmentsRecord> viewEquipmentEquipmentsRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.titleHeaderComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const TitleHeaderComponentWidget(
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Equipment',
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
                                        'Assets and materials that the campus owns',
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 10.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.equipmentSearchTextController,
                                  focusNode: _model.equipmentSearchFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.equipmentSearchTextController',
                                    const Duration(milliseconds: 200),
                                    () async {
                                      logFirebaseEvent(
                                          'VIEW_EQUIPMENT_equipment_search_ON_TEXTF');
                                      if (_model.equipmentSearchTextController
                                                  .text !=
                                              '') {
                                        logFirebaseEvent(
                                            'equipment_search_simple_search');
                                        safeSetState(() {
                                          _model
                                              .simpleSearchResults = TextSearch(
                                            viewEquipmentEquipmentsRecordList
                                                .map(
                                                  (record) =>
                                                      TextSearchItem.fromTerms(
                                                          record, [
                                                    record.equipmentName
                                                  ]),
                                                )
                                                .toList(),
                                          )
                                              .search(_model
                                                  .equipmentSearchTextController
                                                  .text)
                                              .map((r) => r.object)
                                              .toList();
                                        });
                                        logFirebaseEvent(
                                            'equipment_search_update_app_state');
                                        FFAppState().searchActive = true;
                                        safeSetState(() {});
                                      } else {
                                        logFirebaseEvent(
                                            'equipment_search_update_app_state');
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
                                            .equipmentSearchTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model
                                                  .equipmentSearchTextController
                                                  ?.clear();
                                              logFirebaseEvent(
                                                  'VIEW_EQUIPMENT_equipment_search_ON_TEXTF');
                                              if (_model.equipmentSearchTextController
                                                          .text !=
                                                      '') {
                                                logFirebaseEvent(
                                                    'equipment_search_simple_search');
                                                safeSetState(() {
                                                  _model.simpleSearchResults =
                                                      TextSearch(
                                                    viewEquipmentEquipmentsRecordList
                                                        .map(
                                                          (record) =>
                                                              TextSearchItem
                                                                  .fromTerms(
                                                                      record, [
                                                            record
                                                                .equipmentName
                                                          ]),
                                                        )
                                                        .toList(),
                                                  )
                                                          .search(_model
                                                              .equipmentSearchTextController
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList();
                                                });
                                                logFirebaseEvent(
                                                    'equipment_search_update_app_state');
                                                FFAppState().searchActive =
                                                    true;
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'equipment_search_update_app_state');
                                                FFAppState().searchActive =
                                                    false;
                                                safeSetState(() {});
                                              }

                                              safeSetState(() {});
                                            },
                                            child: const Icon(
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
                                      .equipmentSearchTextControllerValidator
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
                                    'VIEW_EQUIPMENT_CircleImage_qm2lq29f_ON_T');
                                logFirebaseEvent('CircleImage_navigate_to');

                                context.pushNamed(
                                  'maintenance_equipment',
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
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/Equipment.png',
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
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (!FFAppState().searchActive)
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: Builder(
                                    builder: (context) {
                                      final equipmentSearch =
                                          viewEquipmentEquipmentsRecordList
                                              .toList();
                                      if (equipmentSearch.isEmpty) {
                                        return const EmptyListWidget(
                                          emptyWhat: 'equipment',
                                        );
                                      }

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: equipmentSearch.length,
                                        itemBuilder:
                                            (context, equipmentSearchIndex) {
                                          final equipmentSearchItem =
                                              equipmentSearch[
                                                  equipmentSearchIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
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
                                                                          const EdgeInsets.all(
                                                                              5.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/Equipment.png',
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
                                                                      equipmentSearchItem
                                                                          .equipmentName
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
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        'Quantity: ${equipmentSearchItem.equipmentQuantity.toString()} ${equipmentSearchItem.equipmentUnit}'
                                                                            .maybeHandleOverflow(
                                                                          maxChars:
                                                                              50,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              fontSize: 11.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ).animateOnPageLoad(
                                                                              animationsMap['textOnPageLoadAnimation1']!),
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
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
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
                                                                        'VIEW_EQUIPMENT_PAGE_Icon_vevwuohk_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'maintenance_equipment',
                                                                      queryParameters:
                                                                          {
                                                                        'isNew':
                                                                            serializeParam(
                                                                          false,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'equipmentName':
                                                                            serializeParam(
                                                                          equipmentSearchItem
                                                                              .equipmentName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'equipmentTag':
                                                                            serializeParam(
                                                                          equipmentSearchItem
                                                                              .equipmentTag,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'equipmentUnit':
                                                                            serializeParam(
                                                                          equipmentSearchItem
                                                                              .equipmentUnit,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'equipmentValue':
                                                                            serializeParam(
                                                                          equipmentSearchItem
                                                                              .equipmentQuantity,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'equipmentRef':
                                                                            serializeParam(
                                                                          equipmentSearchItem
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'roomRef':
                                                                            serializeParam(
                                                                          equipmentSearchItem
                                                                              .equipmentLocation,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            const TransitionInfo(
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
                                                                          .equipmentSearchTextController
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
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
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
                                                                          'VIEW_EQUIPMENT_PAGE_Icon_2kcfplnm_ON_TAP');
                                                                      var shouldSetState =
                                                                          false;
                                                                      logFirebaseEvent(
                                                                          'Icon_alert_dialog');
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
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            child:
                                                                                WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                child: const ConfirmPasswordDialogWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(() =>
                                                                              _model.confirmEquipmentDelete = value));

                                                                      shouldSetState =
                                                                          true;
                                                                      if (_model
                                                                          .confirmEquipmentDelete!) {
                                                                        logFirebaseEvent(
                                                                            'Icon_backend_call');
                                                                        await equipmentSearchItem
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
                                                                              'equipment',
                                                                          doneToName:
                                                                              equipmentSearchItem.equipmentName,
                                                                        );
                                                                        logFirebaseEvent(
                                                                            'Icon_alert_dialog');
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                  child: const InformationDialogBoxWidget(
                                                                                    infoDialogTitle: 'Equipment Deleted',
                                                                                    infoDialogMeesage: 'Equipment has been successfully deleted.',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        logFirebaseEvent(
                                                                            'Icon_reset_form_fields');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .equipmentSearchTextController
                                                                              ?.clear();
                                                                        });
                                                                        logFirebaseEvent(
                                                                            'Icon_update_app_state');
                                                                        FFAppState().searchActive =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Icon_alert_dialog');
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                  child: const InformationDialogBoxWidget(
                                                                                    infoDialogTitle: 'Action Cancelled',
                                                                                    infoDialogMeesage: 'This action has been cancelled.',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        logFirebaseEvent(
                                                                            'Icon_navigate_back');
                                                                        context
                                                                            .safePop();
                                                                        if (shouldSetState) {
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                        return;
                                                                      }

                                                                      if (shouldSetState) {
                                                                        safeSetState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      FFIcons
                                                                          .ktrash,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      size:
                                                                          24.0,
                                                                    ),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: Builder(
                                    builder: (context) {
                                      final equipmentySearch =
                                          _model.simpleSearchResults.toList();
                                      if (equipmentySearch.isEmpty) {
                                        return SearchNotFoundListWidget(
                                          emptyWhat: _model
                                              .equipmentSearchTextController
                                              .text,
                                        );
                                      }

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: equipmentySearch.length,
                                        itemBuilder:
                                            (context, equipmentySearchIndex) {
                                          final equipmentySearchItem =
                                              equipmentySearch[
                                                  equipmentySearchIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
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
                                                                          const EdgeInsets.all(
                                                                              5.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/Equipment.png',
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
                                                                      equipmentySearchItem
                                                                          .equipmentName
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
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        'Quantity: ${equipmentySearchItem.equipmentQuantity.toString()} ${equipmentySearchItem.equipmentUnit}'
                                                                            .maybeHandleOverflow(
                                                                          maxChars:
                                                                              50,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              fontSize: 11.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ).animateOnPageLoad(
                                                                              animationsMap['textOnPageLoadAnimation2']!),
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
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
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
                                                                        'VIEW_EQUIPMENT_PAGE_Icon_r86eci7h_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'maintenance_equipment',
                                                                      queryParameters:
                                                                          {
                                                                        'isNew':
                                                                            serializeParam(
                                                                          false,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'equipmentName':
                                                                            serializeParam(
                                                                          equipmentySearchItem
                                                                              .equipmentName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'equipmentTag':
                                                                            serializeParam(
                                                                          equipmentySearchItem
                                                                              .equipmentTag,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'equipmentUnit':
                                                                            serializeParam(
                                                                          equipmentySearchItem
                                                                              .equipmentUnit,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'equipmentValue':
                                                                            serializeParam(
                                                                          equipmentySearchItem
                                                                              .equipmentQuantity,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'equipmentRef':
                                                                            serializeParam(
                                                                          equipmentySearchItem
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'roomRef':
                                                                            serializeParam(
                                                                          equipmentySearchItem
                                                                              .equipmentLocation,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            const TransitionInfo(
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
                                                                          .equipmentSearchTextController
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
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
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
                                                                          'VIEW_EQUIPMENT_PAGE_Icon_ofhv1zan_ON_TAP');
                                                                      var shouldSetState =
                                                                          false;
                                                                      logFirebaseEvent(
                                                                          'Icon_alert_dialog');
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
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            child:
                                                                                WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                child: const ConfirmPasswordDialogWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(() =>
                                                                              _model.confirmDelete2 = value));

                                                                      shouldSetState =
                                                                          true;
                                                                      if (_model
                                                                          .confirmDelete2!) {
                                                                        logFirebaseEvent(
                                                                            'Icon_backend_call');
                                                                        await equipmentySearchItem
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
                                                                              'equipment',
                                                                          doneToName:
                                                                              equipmentySearchItem.equipmentName,
                                                                        );
                                                                        logFirebaseEvent(
                                                                            'Icon_alert_dialog');
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                  child: const InformationDialogBoxWidget(
                                                                                    infoDialogTitle: 'Equipment Deleted',
                                                                                    infoDialogMeesage: 'Equipment has been successfully deleted.',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        logFirebaseEvent(
                                                                            'Icon_reset_form_fields');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .equipmentSearchTextController
                                                                              ?.clear();
                                                                        });
                                                                        logFirebaseEvent(
                                                                            'Icon_update_app_state');
                                                                        FFAppState().searchActive =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                        if (shouldSetState) {
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                        return;
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Icon_alert_dialog');
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                  child: const InformationDialogBoxWidget(
                                                                                    infoDialogTitle: 'Action Cancelled',
                                                                                    infoDialogMeesage: 'This action has been cancelled.',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        logFirebaseEvent(
                                                                            'Icon_navigate_back');
                                                                        context
                                                                            .safePop();
                                                                        if (shouldSetState) {
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                        return;
                                                                      }

                                                                      if (shouldSetState) {
                                                                        safeSetState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      FFIcons
                                                                          .ktrash,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      size:
                                                                          24.0,
                                                                    ),
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
