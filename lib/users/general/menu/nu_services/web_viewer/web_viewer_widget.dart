import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_viewer_model.dart';
export 'web_viewer_model.dart';

class WebViewerWidget extends StatefulWidget {
  const WebViewerWidget({
    super.key,
    required this.pageName,
    required this.pageLink,
  });

  final String? pageName;
  final String? pageLink;

  @override
  State<WebViewerWidget> createState() => _WebViewerWidgetState();
}

class _WebViewerWidgetState extends State<WebViewerWidget> {
  late WebViewerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebViewerModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'web_viewer'});
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.titleHeaderComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TitleHeaderComponentWidget(
                    titleText: widget!.pageName!,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.85,
                  decoration: BoxDecoration(),
                  child: FlutterFlowWebView(
                    content: widget!.pageLink!,
                    bypass: false,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    verticalScroll: false,
                    horizontalScroll: false,
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
