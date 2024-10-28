import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'approval_type_model.dart';
export 'approval_type_model.dart';

class ApprovalTypeWidget extends StatefulWidget {
  const ApprovalTypeWidget({super.key});

  @override
  State<ApprovalTypeWidget> createState() => _ApprovalTypeWidgetState();
}

class _ApprovalTypeWidgetState extends State<ApprovalTypeWidget> {
  late ApprovalTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApprovalTypeModel());

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('APPROVAL_TYPE_Container_5yo8i79p_ON_TAP');
              logFirebaseEvent('Container_update_component_state');
              _model.approvalType = 'Approve';
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.approvalType == '1'
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
                      'Approve',
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
              logFirebaseEvent('APPROVAL_TYPE_Container_g4aimpc0_ON_TAP');
              logFirebaseEvent('Container_update_component_state');
              _model.approvalType = 'Revision';
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.approvalType == '2'
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
                      'Revision',
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
              logFirebaseEvent('APPROVAL_TYPE_Container_zikyqe5y_ON_TAP');
              logFirebaseEvent('Container_update_component_state');
              _model.approvalType = 'Decline';
              safeSetState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: _model.approvalType == '3'
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
                      'Decline',
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
