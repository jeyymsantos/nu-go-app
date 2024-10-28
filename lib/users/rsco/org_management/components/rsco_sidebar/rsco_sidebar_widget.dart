import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sidebar_tile_n_u_go/sidebar_tile_n_u_go_widget.dart';
import '/components/sidebar_tile_n_u_go_sub_content/sidebar_tile_n_u_go_sub_content_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'rsco_sidebar_model.dart';
export 'rsco_sidebar_model.dart';

class RscoSidebarWidget extends StatefulWidget {
  const RscoSidebarWidget({
    super.key,
    required this.orgName,
    required this.orgType,
    required this.orgLogo,
    required this.org,
  });

  final String? orgName;
  final String? orgType;
  final String? orgLogo;
  final OrganizationsRecord? org;

  @override
  State<RscoSidebarWidget> createState() => _RscoSidebarWidgetState();
}

class _RscoSidebarWidgetState extends State<RscoSidebarWidget>
    with TickerProviderStateMixin {
  late RscoSidebarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RscoSidebarModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-400.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-400.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-400.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 700.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-400.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1300.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25.0, 50.0, 25.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          valueOrDefault<String>(
                            widget.orgLogo,
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/NU_shield.svg/1200px-NU_shield.svg.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.orgName,
                                    'Org Name',
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.orgType,
                                    'Type',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'MAIN',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation1']!),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: _model.expandedOption == 1
                                      ? FlutterFlowTheme.of(context)
                                          .pulsatingLine
                                      : const Color(0x00000000),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'RSCO_SIDEBAR_Container_w8490lt6_ON_TAP');
                                    logFirebaseEvent(
                                        'sidebarTileNUGo_update_component_state');
                                    _model.expandedOption = 1;
                                    safeSetState(() {});
                                    logFirebaseEvent(
                                        'sidebarTileNUGo_close_dialog_drawer_etc');
                                    Navigator.pop(context);
                                    logFirebaseEvent(
                                        'sidebarTileNUGo_navigate_to');

                                    context.pushNamed(
                                      'rsco_dashboard',
                                      queryParameters: {
                                        'org': serializeParam(
                                          widget.org?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );

                                    logFirebaseEvent(
                                        'sidebarTileNUGo_update_component_state');
                                    _model.expandedOption = 100;
                                    safeSetState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.sidebarTileNUGoModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const SidebarTileNUGoWidget(
                                      tileIcon: Icon(
                                        FFIcons.khome,
                                      ),
                                      tileName: 'Dashboard',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: _model.expandedOption == 2
                                      ? FlutterFlowTheme.of(context)
                                          .pulsatingLine
                                      : const Color(0x00000000),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'RSCO_SIDEBAR_Container_80zyg2wv_ON_TAP');
                                    logFirebaseEvent(
                                        'sidebarTileNUGo_update_component_state');
                                    _model.expandedOption = 2;
                                    safeSetState(() {});
                                    logFirebaseEvent(
                                        'sidebarTileNUGo_close_dialog_drawer_etc');
                                    Navigator.pop(context);
                                    logFirebaseEvent(
                                        'sidebarTileNUGo_navigate_to');

                                    context.pushNamed(
                                      'org_edit',
                                      queryParameters: {
                                        'orgdoc': serializeParam(
                                          widget.org,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'orgdoc': widget.org,
                                      },
                                    );

                                    logFirebaseEvent(
                                        'sidebarTileNUGo_update_component_state');
                                    _model.expandedOption = 100;
                                    safeSetState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.sidebarTileNUGoModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const SidebarTileNUGoWidget(
                                      tileIcon: Icon(
                                        FFIcons.kheartEdit4,
                                      ),
                                      tileName: 'Update Details',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 10.0),
                          child: Text(
                            'MANAGE',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _model.expandedOption == 3
                                    ? FlutterFlowTheme.of(context).pulsatingLine
                                    : const Color(0x00000000),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'RSCO_SIDEBAR_COMP_Row_1da2s692_ON_TAP');
                                  logFirebaseEvent(
                                      'Row_update_component_state');
                                  _model.expandedOption = 3;
                                  safeSetState(() {});
                                  logFirebaseEvent('Row_navigate_to');

                                  context.pushNamed(
                                    'org_members_pending',
                                    queryParameters: {
                                      'orgDoc': serializeParam(
                                        widget.org,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'orgDoc': widget.org,
                                    },
                                  );

                                  logFirebaseEvent(
                                      'Row_close_dialog_drawer_etc');
                                  Navigator.pop(context);
                                  logFirebaseEvent(
                                      'Row_update_component_state');
                                  _model.expandedOption = 100;
                                  safeSetState(() {});
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.sidebarTileNUGoModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SidebarTileNUGoWidget(
                                        tileIcon: Icon(
                                          FFIcons.kuser,
                                        ),
                                        tileName: 'Members & Officers',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _model.expandedOption == 4
                                    ? FlutterFlowTheme.of(context).pulsatingLine
                                    : const Color(0x00000000),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'RSCO_SIDEBAR_COMP_Row_wvd8vmrk_ON_TAP');
                                  logFirebaseEvent(
                                      'Row_update_component_state');
                                  _model.expandedOption = 4;
                                  safeSetState(() {});
                                  logFirebaseEvent(
                                      'Row_close_dialog_drawer_etc');
                                  Navigator.pop(context);
                                  logFirebaseEvent('Row_navigate_to');

                                  context.pushNamed(
                                    'event_management',
                                    queryParameters: {
                                      'orgRef': serializeParam(
                                        widget.org?.reference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );

                                  logFirebaseEvent(
                                      'Row_update_component_state');
                                  _model.expandedOption = 100;
                                  safeSetState(() {});
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.sidebarTileNUGoModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SidebarTileNUGoWidget(
                                        tileIcon: Icon(
                                          FFIcons.kranking,
                                        ),
                                        tileName: 'Events',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (false)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: _model.expandedOption == 5
                                      ? FlutterFlowTheme.of(context)
                                          .pulsatingLine
                                      : const Color(0x00000000),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'RSCO_SIDEBAR_COMP_Row_jmpj88fq_ON_TAP');
                                    logFirebaseEvent(
                                        'Row_update_component_state');
                                    _model.expandedOption = 5;
                                    safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      wrapWithModel(
                                        model: _model.sidebarTileNUGoModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const SidebarTileNUGoWidget(
                                          tileIcon: Icon(
                                            FFIcons.kfolderOpen4,
                                          ),
                                          tileName: 'Forms',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Transform.rotate(
                                          angle: (_model.expandedOption == 5
                                                  ? 270.0
                                                  : 90.0) *
                                              (math.pi / 180),
                                          child: Icon(
                                            Icons.navigate_next_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 21.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (_model.expandedOption == 5)
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 2.0,
                                          height: 73.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .pulsatingLine,
                                          ),
                                        ),
                                        Flexible(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'RSCO_SIDEBAR_Container_m1b75hky_ON_TAP');
                                                  logFirebaseEvent(
                                                      'sidebarTileNUGoSubContent_close_dialog_d');
                                                  Navigator.pop(context);
                                                  logFirebaseEvent(
                                                      'sidebarTileNUGoSubContent_navigate_to');

                                                  context.pushNamed(
                                                      'org_form_management');

                                                  logFirebaseEvent(
                                                      'sidebarTileNUGoSubContent_update_compone');
                                                  _model.expandedOption = 100;
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model
                                                      .sidebarTileNUGoSubContentModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      const SidebarTileNUGoSubContentWidget(
                                                    tileName: 'Manage Forms',
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'RSCO_SIDEBAR_Container_mvhdk17x_ON_TAP');
                                                    logFirebaseEvent(
                                                        'sidebarTileNUGoSubContent_navigate_to');

                                                    context.pushNamed(
                                                        'form_and_reservations');

                                                    logFirebaseEvent(
                                                        'sidebarTileNUGoSubContent_close_dialog_d');
                                                    Navigator.pop(context);
                                                    logFirebaseEvent(
                                                        'sidebarTileNUGoSubContent_update_compone');
                                                    _model.expandedOption = 100;
                                                    safeSetState(() {});
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .sidebarTileNUGoSubContentModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        const SidebarTileNUGoSubContentWidget(
                                                      tileName: 'Request Forms',
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
                                ),
                            ],
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _model.expandedOption == 6
                                    ? FlutterFlowTheme.of(context).pulsatingLine
                                    : const Color(0x00000000),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'RSCO_SIDEBAR_COMP_Row_7b07y75l_ON_TAP');
                                  logFirebaseEvent(
                                      'Row_update_component_state');
                                  _model.expandedOption = 6;
                                  safeSetState(() {});
                                  logFirebaseEvent(
                                      'Row_close_dialog_drawer_etc');
                                  Navigator.pop(context);
                                  logFirebaseEvent('Row_navigate_to');

                                  context.pushNamed('org_reports');

                                  logFirebaseEvent(
                                      'Row_update_component_state');
                                  _model.expandedOption = 100;
                                  safeSetState(() {});
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.sidebarTileNUGoModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SidebarTileNUGoWidget(
                                        tileIcon: Icon(
                                          FFIcons.kchart214,
                                        ),
                                        tileName: 'Reports',
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
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 25.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(1.0, 20.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'RSCO_SIDEBAR_COMP_Row_1oqziwif_ON_TAP');
                          logFirebaseEvent('Row_widget_animation');
                          if (animationsMap['iconOnActionTriggerAnimation'] !=
                              null) {
                            await animationsMap['iconOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                          logFirebaseEvent('Row_navigate_to');

                          context.pushNamed(
                            'auth_loading',
                            queryParameters: {
                              'fromEvent': serializeParam(
                                false,
                                ParamType.bool,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Icon(
                                  FFIcons.krefresh,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 39.0,
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'iconOnActionTriggerAnimation']!,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 25.0,
                                      height: 25.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          currentUserPhoto,
                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/NU_shield.svg/1200px-NU_shield.svg.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Switch to Profile',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation2']!),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
