import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'privacy_statement_model.dart';
export 'privacy_statement_model.dart';

class PrivacyStatementWidget extends StatefulWidget {
  const PrivacyStatementWidget({super.key});

  @override
  State<PrivacyStatementWidget> createState() => _PrivacyStatementWidgetState();
}

class _PrivacyStatementWidgetState extends State<PrivacyStatementWidget> {
  late PrivacyStatementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyStatementModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

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
                        'Privacy and Policy',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Text(
                        'Welcome to NU GO!, the event management application developed for National University Baliwag. This Privacy Policy outlines our practices regarding the collection, use, and disclosure of personal information when you use our mobile application.\n',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Clan Pro',
                              useGoogleFonts: false,
                              lineHeight: 2.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Text(
                            'Information We Collect',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'User-Provided Information\n   - When you register or use NU GO!, we may collect personal information such as your name, contact details, and student identification number',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              'Event-Related Information',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'NU GO! allows users to create and manage events. Information related to events, including event details and attendance records, may be collected.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Usage Data',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'We may collect information on how you interact with the application, such as the features you use and the frequency of your interactions.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'How We Use Your Information',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            '1. Event Management:\n   - Your information is primarily used to facilitate event management processes, including event creation, attendance tracking, and communication related to events.\n\n2. User Experience Improvement:\n   - We may use collected data to analyze user behavior and enhance the user experience within the application.\n\n3. Communication:\n   - We may use your contact information to send you notifications, updates, and relevant information about events.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Right as the Data Subject',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'At NU GO! Event Management Application, we prioritize and respect your privacy rights in accordance with the Data Privacy Act of 2012. As a data subject, you have the following rights:\n\n1. Right to Access:\n   - You have the right to request and obtain access to your personal data processed by NU GO! Event Management Application. This includes information about the purposes of the processing, the categories of personal data concerned, and the recipients or categories of recipients to whom the personal data has been or will be disclosed.\n\n2. Right to Rectification:\n   - If you believe that any personal data we hold about you is inaccurate or incomplete, you have the right to request correction or completion.\n\n3. Right to Erasure (Right to be Forgotten):\n  - You have the right to request the deletion of your personal data when it is no longer necessary for the purposes for which it was collected, or when you have withdrawn your consent.\n\n4. Right to Restriction of Processing:\n   - You can request the restriction of processing of your personal data under certain circumstances. This means we will limit the way we use your data.\n\n5. Right to Data Portability:\n   - You have the right to receive your personal data provided to NU GO! Event Management Application in a structured, commonly used, and machine-readable format. You also have the right to transmit this data to another controller.\n\n6. Right to Object:\n   - You can object to the processing of your personal data, under certain conditions. NU GO! Event Management Application will cease processing your data unless we can demonstrate compelling legitimate grounds for the processing.\n\n7. Automated Individual Decision-Making, Including Profiling:\n   - NU GO! Event Management Application does not engage in automated decision-making, including profiling, without your explicit consent.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Exercising Your Rights',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'To exercise any of these rights or for any questions and clarifications regarding your privacy, please contact itro@nu-baliwag.edu.ph. We will respond to your requests within the timelines stipulated by applicable data protection laws.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Complaints',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'If you believe that your data protection rights have been violated, you have the right to lodge a complaint with the National Privacy Commission or any other relevant supervisory authority.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Data Security',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'We prioritize the security of your personal information and have implemented appropriate measures to safeguard it against unauthorized access, disclosure, alteration, and destruction.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Data Sharing',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'We do not sell, trade, or otherwise transfer your personal information to external parties. Your data is shared only within the NU GO! platform for the purpose of event management.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Your Choices',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'You have the right to review, update, and delete your personal information within the NU GO! application. You can manage your privacy settings in the app.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Changes to this Privacy Policy',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'We may update our Privacy Policy from time to time. Any changes will be effective immediately, and we encourage you to review this policy periodically.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Contact Us',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'If you have any questions or concerns about our Privacy Policy, please contact us at syn3rgy@national-u.edu.ph\n\nBy using NU GO!, you consent to the terms outlined in this Privacy Policy.\n\n\n',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Clan Pro',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                  lineHeight: 2.0,
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
        ),
      ),
    );
  }
}
