import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_model.dart';
export 'terms_model.dart';

class TermsWidget extends StatefulWidget {
  const TermsWidget({super.key});

  @override
  State<TermsWidget> createState() => _TermsWidgetState();
}

class _TermsWidgetState extends State<TermsWidget> {
  late TermsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 75.0, 0.0, 0.0),
                      child: Text(
                        'Terms and Condition',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Text(
                        ' Acceptance of Terms:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'By accessing and using the NU GO! Event Management Application, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, please refrain from using the App.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Clan Pro',
                            fontSize: 14.0,
                            useGoogleFonts: false,
                            lineHeight: 2.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Authorization',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'By registering in the App, users warrant that they are duly authorized to register, request access, and provide information on their behalf. The App Owner may request additional documents to verify such authority.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Clan Pro',
                            useGoogleFonts: false,
                            lineHeight: 2.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Use of the App',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      ' The App shall only be used for the following purposes:\n      - Event management and organization.\n      - Registration for events hosted by \n         registered student councils and \n         organizations.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Clan Pro',
                            useGoogleFonts: false,
                            lineHeight: 2.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Restrictions',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'In Access',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'Only registered student councils and organizations, as well as NU Baliwag offices, may access the full features of the NU GO! App. Unauthorized access is strictly prohibited.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Clan Pro',
                          useGoogleFonts: false,
                          lineHeight: 2.0,
                        ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'In App',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'Users are expressly restricted from:\n- Selling, sub-licensing, or commercializing the App.\n- Using the App for illegal activities.\n - Violating applicable laws and regulations.\n - Engaging in data mining, harvesting, \n    extracting, or similar activities.\n - Using the App for advertising or \n    marketing.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Clan Pro',
                          useGoogleFonts: false,
                          lineHeight: 2.0,
                        ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Profile and Data Privacy',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'All information gathered by the App shall be treated as confidential. Users\' personal information is processed in accordance with the Data Privacy Act of 2012. The App Owner will use the information provided by users in accordance with the Data Privacy Policy.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Clan Pro',
                            useGoogleFonts: false,
                            lineHeight: 2.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Limitation of Liability',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'The App Owner, its officers, directors, and employees shall not be liable for breaches arising from the user\'s contrary use of the App. They shall not be liable for any indirect, consequential, or special liability related to the user\'s use of the App not in accordance with these terms.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Clan Pro',
                            useGoogleFonts: false,
                            lineHeight: 2.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Updates to Terms',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'The App Owner reserves the right to revise these Terms at any time. Users are expected to review the Terms regularly to ensure understanding of all conditions governing the use of the App.\n\n\n',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Clan Pro',
                            useGoogleFonts: false,
                            lineHeight: 2.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
