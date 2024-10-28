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
import 'view_user_roles_model.dart';
export 'view_user_roles_model.dart';

class ViewUserRolesWidget extends StatefulWidget {
  const ViewUserRolesWidget({super.key});

  @override
  State<ViewUserRolesWidget> createState() => _ViewUserRolesWidgetState();
}

class _ViewUserRolesWidgetState extends State<ViewUserRolesWidget>
    with TickerProviderStateMixin {
  late ViewUserRolesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewUserRolesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'view_user_roles'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('VIEW_USER_ROLES_view_user_roles_ON_INIT_');
      logFirebaseEvent('view_user_roles_update_app_state');
      FFAppState().searchActive = false;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
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
      'iconOnPageLoadAnimation1': AnimationInfo(
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
      'iconOnPageLoadAnimation2': AnimationInfo(
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
      'imageOnPageLoadAnimation2': AnimationInfo(
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
      'textOnPageLoadAnimation3': AnimationInfo(
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
      'textOnPageLoadAnimation4': AnimationInfo(
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
      'iconOnPageLoadAnimation3': AnimationInfo(
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
      'iconOnPageLoadAnimation4': AnimationInfo(
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

    return StreamBuilder<List<RolesRecord>>(
      stream: queryRolesRecord(
        queryBuilder: (rolesRecord) => rolesRecord.orderBy('role_name'),
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
        List<RolesRecord> viewUserRolesRolesRecordList = snapshot.data!;

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
                                      'Roles',
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
                                        'A specific role that a user can have while using the application.',
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
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController',
                                    const Duration(milliseconds: 200),
                                    () async {
                                      logFirebaseEvent(
                                          'VIEW_USER_ROLES_TextField_c0460l10_ON_TE');
                                      if (_model.textController.text != '') {
                                        logFirebaseEvent(
                                            'TextField_simple_search');
                                        safeSetState(() {
                                          _model
                                              .simpleSearchResults = TextSearch(
                                            viewUserRolesRolesRecordList
                                                .map(
                                                  (record) =>
                                                      TextSearchItem.fromTerms(
                                                          record,
                                                          [record.roleName]),
                                                )
                                                .toList(),
                                          )
                                              .search(
                                                  _model.textController.text)
                                              .map((r) => r.object)
                                              .toList();
                                        });
                                        logFirebaseEvent(
                                            'TextField_update_app_state');
                                        FFAppState().searchActive = true;
                                        safeSetState(() {});
                                      } else {
                                        logFirebaseEvent(
                                            'TextField_update_app_state');
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
                                            .textController!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController?.clear();
                                              logFirebaseEvent(
                                                  'VIEW_USER_ROLES_TextField_c0460l10_ON_TE');
                                              if (_model.textController.text !=
                                                      '') {
                                                logFirebaseEvent(
                                                    'TextField_simple_search');
                                                safeSetState(() {
                                                  _model.simpleSearchResults =
                                                      TextSearch(
                                                    viewUserRolesRolesRecordList
                                                        .map(
                                                          (record) =>
                                                              TextSearchItem
                                                                  .fromTerms(
                                                                      record, [
                                                            record.roleName
                                                          ]),
                                                        )
                                                        .toList(),
                                                  )
                                                          .search(_model
                                                              .textController
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList();
                                                });
                                                logFirebaseEvent(
                                                    'TextField_update_app_state');
                                                FFAppState().searchActive =
                                                    true;
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'TextField_update_app_state');
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
                                  validator: _model.textControllerValidator
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
                                    'VIEW_USER_ROLES_CircleImage_yld27mz1_ON_');
                                logFirebaseEvent('CircleImage_navigate_to');

                                context.pushNamed(
                                  'maintenance_user_roles',
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
                                  'assets/images/User.png',
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
                                      final rolesSearch =
                                          viewUserRolesRolesRecordList.toList();
                                      if (rolesSearch.isEmpty) {
                                        return const EmptyListWidget(
                                          emptyWhat: 'roles',
                                        );
                                      }

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: rolesSearch.length,
                                        itemBuilder:
                                            (context, rolesSearchIndex) {
                                          final rolesSearchItem =
                                              rolesSearch[rolesSearchIndex];
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
                                                                        'assets/images/User_Profile.png',
                                                                        width:
                                                                            70.0,
                                                                        height:
                                                                            100.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'imageOnPageLoadAnimation1']!),
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
                                                                      rolesSearchItem
                                                                          .roleName,
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
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'textOnPageLoadAnimation1']!),
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        rolesSearchItem
                                                                            .roleDescription
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
                                                                        'VIEW_USER_ROLES_Icon_05y0z9c6_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'maintenance_user_roles',
                                                                      queryParameters:
                                                                          {
                                                                        'isNew':
                                                                            serializeParam(
                                                                          false,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'roleName':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'roleNickname':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleNickname,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'roleDescription':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleDescription,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'roleReference':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'roleSettings':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleAccess,
                                                                          ParamType
                                                                              .DataStruct,
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
                                                                          .textController
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
                                                                    size: 24.0,
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'iconOnPageLoadAnimation1']!),
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
                                                                          'VIEW_USER_ROLES_Icon_j5xqyrgl_ON_TAP');
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
                                                                              _model.confirmRoleDel1 = value));

                                                                      shouldSetState =
                                                                          true;
                                                                      if (_model
                                                                          .confirmRoleDel1!) {
                                                                        logFirebaseEvent(
                                                                            'Icon_backend_call');
                                                                        await rolesSearchItem
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
                                                                              'roles',
                                                                          doneToName:
                                                                              rolesSearchItem.roleName,
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
                                                                                    infoDialogTitle: 'Role Deleted',
                                                                                    infoDialogMeesage: 'Role has been successfully deleted.',
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
                                                                              .textController
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
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'iconOnPageLoadAnimation2']!),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
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
                                      final rolesSearch =
                                          _model.simpleSearchResults.toList();
                                      if (rolesSearch.isEmpty) {
                                        return SearchNotFoundListWidget(
                                          emptyWhat: _model.textController.text,
                                        );
                                      }

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: rolesSearch.length,
                                        itemBuilder:
                                            (context, rolesSearchIndex) {
                                          final rolesSearchItem =
                                              rolesSearch[rolesSearchIndex];
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
                                                                        'assets/images/User_Profile.png',
                                                                        width:
                                                                            70.0,
                                                                        height:
                                                                            100.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'imageOnPageLoadAnimation2']!),
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
                                                                      rolesSearchItem
                                                                          .roleName,
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
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'textOnPageLoadAnimation3']!),
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        rolesSearchItem
                                                                            .roleDescription
                                                                            .maybeHandleOverflow(
                                                                          maxChars:
                                                                              35,
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
                                                                              animationsMap['textOnPageLoadAnimation4']!),
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
                                                                        'VIEW_USER_ROLES_Icon_gs5ryxfg_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'maintenance_user_roles',
                                                                      queryParameters:
                                                                          {
                                                                        'isNew':
                                                                            serializeParam(
                                                                          false,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'roleName':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'roleNickname':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleNickname,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'roleDescription':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleDescription,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'roleReference':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'roleSettings':
                                                                            serializeParam(
                                                                          rolesSearchItem
                                                                              .roleAccess,
                                                                          ParamType
                                                                              .DataStruct,
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
                                                                          .textController
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
                                                                    size: 24.0,
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'iconOnPageLoadAnimation3']!),
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
                                                                          'VIEW_USER_ROLES_Icon_zhmknd0v_ON_TAP');
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
                                                                              _model.confirmRoleDel2 = value));

                                                                      shouldSetState =
                                                                          true;
                                                                      if (_model
                                                                          .confirmRoleDel2!) {
                                                                        logFirebaseEvent(
                                                                            'Icon_backend_call');
                                                                        await rolesSearchItem
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
                                                                              'roles',
                                                                          doneToName:
                                                                              rolesSearchItem.roleName,
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
                                                                                    infoDialogTitle: 'Role Deleted',
                                                                                    infoDialogMeesage: 'Role has been successfully deleted.',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        logFirebaseEvent(
                                                                            'Icon_alert_dialog');
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return WebViewAware(
                                                                              child: AlertDialog(
                                                                                title: const Text('Deleted Role'),
                                                                                content: const Text('Role has been successfully deleted.'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: const Text('Okay'),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                        logFirebaseEvent(
                                                                            'Icon_reset_form_fields');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .textController
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
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'iconOnPageLoadAnimation4']!),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
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
