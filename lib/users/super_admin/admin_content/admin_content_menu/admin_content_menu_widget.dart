import '/backend/backend.dart';
import '/components/widgets/card_with_description/card_with_description_widget.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_content_menu_model.dart';
export 'admin_content_menu_model.dart';

class AdminContentMenuWidget extends StatefulWidget {
  const AdminContentMenuWidget({super.key});

  @override
  State<AdminContentMenuWidget> createState() => _AdminContentMenuWidgetState();
}

class _AdminContentMenuWidgetState extends State<AdminContentMenuWidget> {
  late AdminContentMenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminContentMenuModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'admin_content_menu'});
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

        final adminContentMenuDefaultsRecord = snapshot.data!;

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
                              titleText: 'Content Menu',
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.subtitleHeaderModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SubtitleHeaderWidget(
                                    mainTitle: 'Content',
                                    subText:
                                        'Manage and publish announcements, news and updates to all users.',
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'ADMIN_CONTENT_MENU_Container_3hqc8ux2_ON');
                                        logFirebaseEvent(
                                            'cardWithDescription_navigate_to');

                                        context.pushNamed(
                                          'admin_content_create',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
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
                                        model: _model.cardWithDescriptionModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CardWithDescriptionWidget(
                                          title: 'Create Content',
                                          description:
                                              'Publish new content to be displayed on the feed of the users.',
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'ADMIN_CONTENT_MENU_Container_qrpkyvci_ON');
                                        logFirebaseEvent(
                                            'cardWithDescription_navigate_to');

                                        context.pushNamed('admin_content_view');
                                      },
                                      child: wrapWithModel(
                                        model: _model.cardWithDescriptionModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CardWithDescriptionWidget(
                                          title: 'Manage Content',
                                          description:
                                              'View, update, or delete any published content on the app.',
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              ],
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
