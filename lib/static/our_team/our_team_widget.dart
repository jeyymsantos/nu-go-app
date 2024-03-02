import '/components/widgets/card/card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                        child: Text(
                          'Our Team',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Clan Pro',
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: wrapWithModel(
                        model: _model.benjaminModel,
                        updateCallback: () => setState(() {}),
                        child: const CardWidget(
                          image:
                              'https://scontent.fmnl30-3.fna.fbcdn.net/v/t39.30808-6/364239340_2469160516591667_3448810287047644183_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFiaeWOicQ-l5xvYJWB_MVGmiul0wc3tByaK6XTBze0HD7Bd9kVdRQPoTZ6tob0DLD1848h_rOR-dGEKn4lpSff&_nc_ohc=OVBzQ0NNH8gAX8g5o3-&_nc_ht=scontent.fmnl30-3.fna&oh=00_AfCuhyR588O6Kz-OSwsQ7SrSQqCl0bvUY1Wzfk9bhiNyhA&oe=65D8721C',
                          name: 'Brenley Ian DR Robles',
                          role: 'Front-end Developer/UI/UX Designer',
                          roleDefinition:
                              'Crafting seamless user experiences with code, design, and innovation expertise.',
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.junnieModel,
                      updateCallback: () => setState(() {}),
                      child: const CardWidget(
                        image:
                            'https://scontent.fmnl30-1.fna.fbcdn.net/v/t39.30808-6/294825676_3428774990782712_4025329880613348076_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHlS6icgA9KQCZ5e_wAfXSTl2b0ii3GSKiXZvSKLcZIqG497owycuK_-H6sQpnP-NNgvbTR10HRMeMRsK4TEDx3&_nc_ohc=Jl5NlB8okPMAX_0UlsO&_nc_ht=scontent.fmnl30-1.fna&oh=00_AfC4mQcDdzGLXA10-PcnXUD1bd2wmsshjP37cuWCVktENw&oe=65DA318C',
                        name: 'Jhon Mark L. Santos',
                        role: 'Back-end Developer/Documentation',
                        roleDefinition:
                            'Coding the behind-the-scenes magic and documenting for tech harmony and efficiency.',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.nicholeModel,
                      updateCallback: () => setState(() {}),
                      child: const CardWidget(
                        image:
                            'https://scontent.xx.fbcdn.net/v/t1.15752-9/423062708_1481298742416955_3828919622349484095_n.jpg?stp=dst-jpg_s403x403&_nc_cat=105&ccb=1-7&_nc_sid=510075&_nc_eui2=AeFVB7V1NMbUCC2DbTo7vo5T9g15ONr5EF32DXk42vkQXY_Zb-YHeYO8SB4s22ND50xxKso0gPfECsud_79sDMJY&_nc_ohc=8QfeRrdayIYAX9S1ccF&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRMFsTL6BbEifrD4Qd8QhKhWWYMV1fbGGk3q22Cd_NS4A&oe=65FBD7BA',
                        name: 'Nichole Joyce G. Santos',
                        role: 'Front-end Developer/Documentation',
                        roleDefinition:
                            'Designing informative interfaces and documenting the visual language for seamless interactions.',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
