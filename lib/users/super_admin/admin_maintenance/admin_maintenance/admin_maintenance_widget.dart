import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'admin_maintenance_model.dart';
export 'admin_maintenance_model.dart';

class AdminMaintenanceWidget extends StatefulWidget {
  const AdminMaintenanceWidget({super.key});

  @override
  State<AdminMaintenanceWidget> createState() => _AdminMaintenanceWidgetState();
}

class _AdminMaintenanceWidgetState extends State<AdminMaintenanceWidget>
    with TickerProviderStateMixin {
  late AdminMaintenanceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminMaintenanceModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'admin_maintenance'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADMIN_MAINTENANCE_admin_maintenance_ON_I');
      logFirebaseEvent('admin_maintenance_backend_call');
      _model.isMaintenance =
          await DefaultsRecord.getDocumentOnce(FFAppState().defaultID!);
      logFirebaseEvent('admin_maintenance_set_form_field');
      safeSetState(() {
        _model.adminMaintenanceMdoeValue = _model.isMaintenance!.isMaintenance;
      });
      logFirebaseEvent('admin_maintenance_update_page_state');
      _model.hidden = false;
      safeSetState(() {});
    });

    _model.adminMaintenanceMdoeValue = _model.hidden;
    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.titleHeaderComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleHeaderComponentWidget(
                        titleText: 'Admin Maintenance',
                      ),
                    ),
                  ],
                ),
                if (!_model.hidden)
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (_model.adminMaintenanceMdoeValue ?? true)
                                    Text(
                                      'By turning on the maintenance mode below, you will hold all general users on accessing the application. They may only access the app again once you turned off the toggle.',
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  if (!_model.adminMaintenanceMdoeValue!)
                                    Text(
                                      'By turning off the maintenance mode below, general users will be able to access the application.',
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 20.0),
                                      child: Switch.adaptive(
                                        value:
                                            _model.adminMaintenanceMdoeValue!,
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.adminMaintenanceMdoeValue =
                                                  newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        activeTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        inactiveTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        inactiveThumbColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'ADMIN_MAINTENANCE_PAGE_Save_ON_TAP');
                                      logFirebaseEvent('Save_alert_dialog');
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: Text(
                                                          'Maintenance Mode'),
                                                      content: Text(
                                                          'Are you sure you want to change the maintenance mode?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text('Cancel'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirm'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ) ??
                                              false;
                                      if (confirmDialogResponse) {
                                        logFirebaseEvent('Save_backend_call');

                                        await FFAppState()
                                            .defaultID!
                                            .update(createDefaultsRecordData(
                                              isMaintenance: _model
                                                  .adminMaintenanceMdoeValue,
                                            ));
                                        logFirebaseEvent('Save_action_block');
                                        await action_blocks.logs(
                                          context,
                                          type: 'updated',
                                          module: 'defaults',
                                          doneToName: 'Maintenance Mode',
                                        );
                                        logFirebaseEvent('Save_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text(
                                                    'Maintenance Mode Updated'),
                                                content: Text(
                                                    'You have successfully updated the maintenance mode.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                        logFirebaseEvent('Save_navigate_back');
                                        context.safePop();
                                        return;
                                      } else {
                                        return;
                                      }
                                    },
                                    text: 'Save',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation']!),
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
    );
  }
}
