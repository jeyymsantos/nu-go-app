import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'content_view_model.dart';
export 'content_view_model.dart';

class ContentViewWidget extends StatefulWidget {
  const ContentViewWidget({
    super.key,
    required this.photo,
    required this.title,
    required this.content,
    required this.postedBy,
    required this.author,
    required this.postedWhen,
    required this.type,
  });

  final String? photo;
  final String? title;
  final String? content;
  final String? postedBy;
  final String? author;
  final DateTime? postedWhen;
  final String? type;

  @override
  State<ContentViewWidget> createState() => _ContentViewWidgetState();
}

class _ContentViewWidgetState extends State<ContentViewWidget> {
  late ContentViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentViewModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'content_view'});
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.titleHeaderComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TitleHeaderComponentWidget(
                    titleText: widget!.type!,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 20.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'CONTENT_VIEW_PAGE_Image_v4hagsns_ON_TAP');
                              logFirebaseEvent('Image_expand_image');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.network(
                                      valueOrDefault<String>(
                                        widget!.photo,
                                        'https://scontent.fmnl3-1.fna.fbcdn.net/v/t39.30808-6/453490364_892270432935095_970724940809919706_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeFvYbi4G_02oC63eWIchGmMQayY4qTaybtBrJjipNrJu7B_zieKd4MsMVpitNXr4WrFuee2tgbnDSLQE-_hFjXh&_nc_ohc=CVz7AfbyNXYQ7kNvgGAodz7&_nc_ht=scontent.fmnl3-1.fna&oh=00_AYCXHWnAyeM-piVlDY1iMu9hk5RqxUb9YxHvuq5sF1criw&oe=66CEA4CE',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: valueOrDefault<String>(
                                      widget!.photo,
                                      'https://scontent.fmnl3-1.fna.fbcdn.net/v/t39.30808-6/453490364_892270432935095_970724940809919706_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeFvYbi4G_02oC63eWIchGmMQayY4qTaybtBrJjipNrJu7B_zieKd4MsMVpitNXr4WrFuee2tgbnDSLQE-_hFjXh&_nc_ohc=CVz7AfbyNXYQ7kNvgGAodz7&_nc_ht=scontent.fmnl3-1.fna&oh=00_AYCXHWnAyeM-piVlDY1iMu9hk5RqxUb9YxHvuq5sF1criw&oe=66CEA4CE',
                                    ),
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: valueOrDefault<String>(
                                widget!.photo,
                                'https://scontent.fmnl3-1.fna.fbcdn.net/v/t39.30808-6/453490364_892270432935095_970724940809919706_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeFvYbi4G_02oC63eWIchGmMQayY4qTaybtBrJjipNrJu7B_zieKd4MsMVpitNXr4WrFuee2tgbnDSLQE-_hFjXh&_nc_ohc=CVz7AfbyNXYQ7kNvgGAodz7&_nc_ht=scontent.fmnl3-1.fna&oh=00_AYCXHWnAyeM-piVlDY1iMu9hk5RqxUb9YxHvuq5sF1criw&oe=66CEA4CE',
                              ),
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    widget!.photo,
                                    'https://scontent.fmnl3-1.fna.fbcdn.net/v/t39.30808-6/453490364_892270432935095_970724940809919706_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeFvYbi4G_02oC63eWIchGmMQayY4qTaybtBrJjipNrJu7B_zieKd4MsMVpitNXr4WrFuee2tgbnDSLQE-_hFjXh&_nc_ohc=CVz7AfbyNXYQ7kNvgGAodz7&_nc_ht=scontent.fmnl3-1.fna&oh=00_AYCXHWnAyeM-piVlDY1iMu9hk5RqxUb9YxHvuq5sF1criw&oe=66CEA4CE',
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        widget!.title,
                                        'Title',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: ' - ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextSpan(
                                      text: dateTimeFormat(
                                        "relative",
                                        widget!.postedWhen,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: valueOrDefault<String>(
                                          widget!.author,
                                          'Author',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      TextSpan(
                                        text: ' - ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: valueOrDefault<String>(
                                          widget!.content,
                                          'content',
                                        ),
                                        style: TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  textAlign: TextAlign.start,
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
            ],
          ),
        ),
      ),
    );
  }
}
