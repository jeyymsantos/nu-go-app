import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_type_choice_model.dart';
export 'event_type_choice_model.dart';

class EventTypeChoiceWidget extends StatefulWidget {
  const EventTypeChoiceWidget({super.key});

  @override
  State<EventTypeChoiceWidget> createState() => _EventTypeChoiceWidgetState();
}

class _EventTypeChoiceWidgetState extends State<EventTypeChoiceWidget> {
  late EventTypeChoiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventTypeChoiceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('EVENT_TYPE_CHOICE_Container_9rpnudif_ON_');
              logFirebaseEvent('Container_update_component_state');
              _model.eventType = 1;
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.eventType == 1
                    ? Color(0xFFE1E1E1)
                    : FlutterFlowTheme.of(context).tabBarUnselected,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Uwide.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'U-wide',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              logFirebaseEvent('EVENT_TYPE_CHOICE_Container_ghyjoscs_ON_');
              logFirebaseEvent('Container_update_component_state');
              _model.eventType = 2;
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.eventType == 2
                    ? Color(0xFFE1E1E1)
                    : FlutterFlowTheme.of(context).tabBarUnselected,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/buildings-2.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'School-wide',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              logFirebaseEvent('EVENT_TYPE_CHOICE_Container_twcld1rw_ON_');
              logFirebaseEvent('Container_update_component_state');
              _model.eventType = 3;
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.eventType == 3
                    ? Color(0xFFE1E1E1)
                    : FlutterFlowTheme.of(context).tabBarUnselected,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/building.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Department-wide',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              logFirebaseEvent('EVENT_TYPE_CHOICE_Container_6b7d0k64_ON_');
              logFirebaseEvent('Container_update_component_state');
              _model.eventType = 4;
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.eventType == 4
                    ? Color(0xFFE1E1E1)
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/star.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Special Interest',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              logFirebaseEvent('EVENT_TYPE_CHOICE_Container_j0jo95aw_ON_');
              logFirebaseEvent('Container_update_component_state');
              _model.eventType = 5;
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.eventType == 5
                    ? Color(0xFFE1E1E1)
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/ranking.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Concerts',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              logFirebaseEvent('EVENT_TYPE_CHOICE_Container_3amvtoji_ON_');
              logFirebaseEvent('Container_update_component_state');
              _model.eventType = 6;
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.eventType == 6
                    ? Color(0xFFE1E1E1)
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/bag-dollar--bag-payment-cash-money-finance.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Paid',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              logFirebaseEvent('EVENT_TYPE_CHOICE_Container_3p33aa49_ON_');
              logFirebaseEvent('Container_update_component_state');
              _model.eventType = 7;
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.eventType == 7
                    ? Color(0xFFE1E1E1)
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/bag-dollar--bag-payment-cash-money-finance-1.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Free',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
        ].divide(SizedBox(width: 10.0)),
      ),
    );
  }
}
