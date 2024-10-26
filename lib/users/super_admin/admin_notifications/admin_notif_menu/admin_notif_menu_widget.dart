import '/backend/backend.dart';
import '/components/widgets/card_with_description/card_with_description_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_notif_menu_model.dart';
export 'admin_notif_menu_model.dart';

class AdminNotifMenuWidget extends StatefulWidget {
  const AdminNotifMenuWidget({super.key});

  @override
  State<AdminNotifMenuWidget> createState() => _AdminNotifMenuWidgetState();
}

class _AdminNotifMenuWidgetState extends State<AdminNotifMenuWidget> {
  late AdminNotifMenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminNotifMenuModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'admin_notif_menu'});
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

    return StreamBuilder<DefaultsRecord>(
      stream: DefaultsRecord.getDocument(FFAppState().defaultID!),
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

        final adminNotifMenuDefaultsRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.titleHeaderComponentModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TitleHeaderComponentWidget(
                              titleText: 'Notifications Menu',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'ADMIN_NOTIF_MENU_Container_wieu426e_ON_T');
                                          logFirebaseEvent(
                                              'cardWithDescription_navigate_to');

                                          context.pushNamed(
                                            'admin_notif_send',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: wrapWithModel(
                                          model:
                                              _model.cardWithDescriptionModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: CardWithDescriptionWidget(
                                            title: 'Send Push Notifications',
                                            description:
                                                'Send push notifications to users through this option.',
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.cardWithDescriptionModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CardWithDescriptionWidget(
                                          title: 'View History',
                                          description:
                                              'Check all the notification history sent to every users.',
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
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
              ),
            ),
          ),
        );
      },
    );
  }
}
