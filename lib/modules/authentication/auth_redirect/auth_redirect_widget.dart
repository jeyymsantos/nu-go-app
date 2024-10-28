import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'auth_redirect_model.dart';
export 'auth_redirect_model.dart';

class AuthRedirectWidget extends StatefulWidget {
  const AuthRedirectWidget({super.key});

  @override
  State<AuthRedirectWidget> createState() => _AuthRedirectWidgetState();
}

class _AuthRedirectWidgetState extends State<AuthRedirectWidget> {
  late AuthRedirectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthRedirectModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'auth_redirect'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('AUTH_REDIRECT_auth_redirect_ON_INIT_STAT');
      await authManager.refreshUser();
      logFirebaseEvent('auth_redirect_custom_action');
      _model.version = await actions.getVersionNumber();
      logFirebaseEvent('auth_redirect_update_app_state');
      FFAppState().appVersion = _model.version!;
      safeSetState(() {});
      logFirebaseEvent('auth_redirect_wait__delay');
      await Future.delayed(const Duration(milliseconds: 3000));
      if (currentUserEmailVerified) {
        if (valueOrDefault<bool>(currentUserDocument?.onboarding, false) ==
            true) {
          logFirebaseEvent('auth_redirect_action_block');
          await action_blocks.logs(
            context,
            type: 'logged on',
            module: 'user',
            doneToName: 'to the app',
          );
          logFirebaseEvent('auth_redirect_action_block');
          await action_blocks.addressLoader(context);
          if (currentUserDocument!.settings.isSuperAdmin) {
            logFirebaseEvent('auth_redirect_navigate_to');

            context.goNamed(
              'super_admin_dashboard',
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                  duration: Duration(milliseconds: 0),
                ),
              },
            );

            return;
          } else if (valueOrDefault(currentUserDocument?.role, '') ==
              'Pending') {
            logFirebaseEvent('auth_redirect_navigate_to');

            context.pushNamed(
              'auth_verify_role',
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                  duration: Duration(milliseconds: 0),
                ),
              },
            );

            return;
          } else {
            logFirebaseEvent('auth_redirect_backend_call');
            _model.isMaintenanceChecker =
                await DefaultsRecord.getDocumentOnce(FFAppState().defaultID!);
            if (_model.isMaintenanceChecker!.isMaintenance) {
              logFirebaseEvent('auth_redirect_navigate_to');

              context.goNamed(
                'auth_ongoing_maintenance',
                extra: <String, dynamic>{
                  kTransitionInfoKey: const TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );

              return;
            } else {
              logFirebaseEvent('auth_redirect_navigate_to');

              context.goNamed(
                'dashboard',
                extra: <String, dynamic>{
                  kTransitionInfoKey: const TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );

              return;
            }
          }
        } else {
          logFirebaseEvent('auth_redirect_navigate_to');

          context.goNamed(
            'onboard_one',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );

          return;
        }
      } else {
        logFirebaseEvent('auth_redirect_navigate_to');

        context.goNamed(
          'auth_verify_email',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );

        return;
      }
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Landing_Page.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 100.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/NUGo_with_White_Highlight.png',
                            width: 117.0,
                            height: 51.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Lottie.asset(
                        'assets/jsons/rOCKET.json',
                        width: 1060.0,
                        height: 380.0,
                        fit: BoxFit.cover,
                        animate: true,
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
  }
}
