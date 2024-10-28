import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'platform_choice_model.dart';
export 'platform_choice_model.dart';

class PlatformChoiceWidget extends StatefulWidget {
  const PlatformChoiceWidget({super.key});

  @override
  State<PlatformChoiceWidget> createState() => _PlatformChoiceWidgetState();
}

class _PlatformChoiceWidgetState extends State<PlatformChoiceWidget> {
  late PlatformChoiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlatformChoiceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (FFAppState().platformChoice != 'Other')
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PLATFORM_CHOICE_Image_1o95pc0u_ON_TAP');
                        logFirebaseEvent('Image_update_app_state');
                        FFAppState().platformChoice = 'Microsoft Teams';
                        _model.updatePage(() {});
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Microsoft-Teams-Logo.png',
                          width: 78.0,
                          height: 32.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    if (FFAppState().platformChoice == 'Microsoft Teams')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: 50.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PLATFORM_CHOICE_Image_e7vrz00m_ON_TAP');
                        logFirebaseEvent('Image_update_app_state');
                        FFAppState().platformChoice = 'Zoom';
                        _model.updatePage(() {});
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Zoom-Logo.png',
                          width: 78.0,
                          height: 32.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    if (FFAppState().platformChoice == 'Zoom')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: 50.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PLATFORM_CHOICE_Image_7dw95v9h_ON_TAP');
                        logFirebaseEvent('Image_update_app_state');
                        FFAppState().platformChoice = 'Discord';
                        _model.updatePage(() {});
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Discord-logo.png',
                          width: 78.0,
                          height: 32.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    if (FFAppState().platformChoice == 'Discord')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: 50.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PLATFORM_CHOICE_Image_vmnm7cva_ON_TAP');
                        logFirebaseEvent('Image_update_app_state');
                        FFAppState().platformChoice = 'Skype';
                        _model.updatePage(() {});
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Skype-Logo.png',
                          width: 78.0,
                          height: 32.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    if (FFAppState().platformChoice == 'Skype')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: 50.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                  ],
                ),
              ].divide(SizedBox(width: 10.0)),
            ),
          ),
      ],
    );
  }
}
