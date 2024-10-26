import '/components/widgets/card/card_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'our_team_model.dart';
export 'our_team_model.dart';

class OurTeamWidget extends StatefulWidget {
  const OurTeamWidget({super.key});

  @override
  State<OurTeamWidget> createState() => _OurTeamWidgetState();
}

class _OurTeamWidgetState extends State<OurTeamWidget> {
  late OurTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurTeamModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'our_team'});
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
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.titleHeaderComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TitleHeaderComponentWidget(
                    titleText: 'Our Team',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: wrapWithModel(
                                model: _model.benjaminModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CardWidget(
                                  name: 'Brenley Ian DR. Robles',
                                  role: 'Front-end Developer/UI/UX Designer',
                                  roleDefinition:
                                      'Crafting seamless user experiences with code, design, and innovation expertise.',
                                  imagePath:
                                      'https://firebasestorage.googleapis.com/v0/b/storage-nugo.appspot.com/o/OurTeam%2FBrenley%20Robles.png?alt=media&token=e26ed629-b6e5-496c-a1b9-66cefdac9bea',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: wrapWithModel(
                              model: _model.junnieModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CardWidget(
                                name: 'Jhon Mark L. Santos',
                                role: 'Back-end Developer/Documentation',
                                roleDefinition:
                                    'Coding the behind-the-scenes magic and documenting for tech harmony and efficiency.',
                                imagePath:
                                    'https://drive.google.com/file/d/1CQHbgQmV7zk223BfqttWRmWudh_fb036/view?usp=sharing',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: wrapWithModel(
                              model: _model.nicholeModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CardWidget(
                                name: 'Nihole Joyce G.  Santos',
                                role: 'Documentation',
                                roleDefinition:
                                    'Our researcher and a document  specialist.',
                                imagePath:
                                    'https://drive.google.com/file/d/1CQHbgQmV7zk223BfqttWRmWudh_fb036/view?usp=sharing',
                              ),
                            ),
                          ),
                        ],
                      ),
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
