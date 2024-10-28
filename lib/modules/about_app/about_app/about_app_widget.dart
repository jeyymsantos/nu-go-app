import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'about_app_model.dart';
export 'about_app_model.dart';

class AboutAppWidget extends StatefulWidget {
  const AboutAppWidget({super.key});

  @override
  State<AboutAppWidget> createState() => _AboutAppWidgetState();
}

class _AboutAppWidgetState extends State<AboutAppWidget> {
  late AboutAppModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutAppModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'about_app'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    titleText: 'About the App',
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Text(
                            'NU GO!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 26.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 25.0),
                            child: Text(
                              'NU GO! is a revolutionary mobile application designed to streamline event management and administrative processes for registered student councils and organizations, and staff at National University Baliwag.  \n\nWith NU GO!, organizers can easily manage events from initial proposal to post-event review. Key features include:\n\n> Event Proposal Submission - Submit new event requests, track approvals status, and manage documents online.\n> Venue & Resource Reservations - Reserve venues, equipment, and other resources needed for the event. Get real-time availability and confirmations.  \n> Calendar Sync & Reminders - Events automatically sync with personal calendars. Get reminders about organizing deadlines, vendor deliveries etc.  \n> Post-Event Feedback - Gather participant feedback via built-in surveys. View analytics and reports to improve future events.\n\nNU GO! simplifies collaboration between student leaders, advisers, facilities staff and administrators. It eliminates paper forms, optimizes event scheduling, and provides visibility into the complete event lifecycle. \n\nThe app provides user-friendly tools accessible right from your smartphone. Whether you are organizing a seminar, concert, or sports tournament, NU GO! makes coordinating a breeze.\n\nNU GO! fosters greater student engagement by removing hassles from the event management process. It helps create an enriching, vibrant campus life at NU Baliwag.\n\nRights to any assets, logos, systems, and/or other property owned by National University is reserved to them. This has been authorized by the Central Marketing Office and ITSO of the institution.\n\nAll Rights Reserved 2024',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 2.0,
                                  ),
                            ),
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
