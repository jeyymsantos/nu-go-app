import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_nav_bar_trial_model.dart';
export 'user_nav_bar_trial_model.dart';

class UserNavBarTrialWidget extends StatefulWidget {
  const UserNavBarTrialWidget({
    super.key,
    int? selectedPageIndex,
  }) : this.selectedPageIndex = selectedPageIndex ?? 1;

  final int selectedPageIndex;

  @override
  State<UserNavBarTrialWidget> createState() => _UserNavBarTrialWidgetState();
}

class _UserNavBarTrialWidgetState extends State<UserNavBarTrialWidget> {
  late UserNavBarTrialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserNavBarTrialModel());

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
      width: double.infinity,
      height: 97.0,
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: 65.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            FFIcons.khome,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'USER_NAV_BAR_TRIAL_HomeIconButton_ON_TAP');
                            logFirebaseEvent('HomeIconButton_navigate_to');

                            context.goNamed(
                              'dashboard',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            FFIcons.kradio,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'USER_NAV_BAR_TRIAL_OrgsIconColumn_ON_TAP');
                            if (valueOrDefault(currentUserDocument?.role, '') ==
                                'Student') {
                              logFirebaseEvent('OrgsIconColumn_navigate_to');

                              context.goNamed(
                                'explore_organization',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            } else {
                              logFirebaseEvent('OrgsIconColumn_navigate_to');

                              context.goNamed(
                                'admin_manage_orgs',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            }
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            FFIcons.karrowUp1,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('SPACER pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            FFIcons.kticket,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'USER_NAV_BAR_TRIAL_HomeIconButton_ON_TAP');
                            if (valueOrDefault(currentUserDocument?.role, '') ==
                                'Student') {
                              logFirebaseEvent('HomeIconButton_navigate_to');

                              context.goNamed(
                                'tickets',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            } else {
                              logFirebaseEvent('HomeIconButton_navigate_to');

                              context.goNamed(
                                'admin_manage_event',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            }
                          },
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.menu,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'USER_NAV_BAR_TRIAL_HomeIconButton_ON_TAP');
                            logFirebaseEvent('HomeIconButton_navigate_to');

                            context.goNamed(
                              'menu',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                        ),
                      ]
                          .divide(SizedBox(width: 16.0))
                          .addToStart(SizedBox(width: 16.0))
                          .addToEnd(SizedBox(width: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                shape: BoxShape.circle,
              ),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: FlutterFlowTheme.of(context).primary,
                      offset: Offset(
                        0.0,
                        7.0,
                      ),
                      spreadRadius: 1.0,
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Opacity(
                  opacity: widget!.selectedPageIndex == 1 ? 1.0 : 0.5,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 0.0,
                      buttonSize: 50.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        FFIcons.kcardPos5,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'USER_NAV_BAR_TRIAL_COMP_Cards_ON_TAP');
                        logFirebaseEvent('Cards_navigate_to');

                        context.goNamed(
                          'user_ID',
                          queryParameters: {
                            'isFromMenu': serializeParam(
                              false,
                              ParamType.bool,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
