import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resource_viewer_model.dart';
export 'resource_viewer_model.dart';

class ResourceViewerWidget extends StatefulWidget {
  const ResourceViewerWidget({
    super.key,
    required this.resourceName,
    required this.resourceFile,
  });

  final String? resourceName;
  final String? resourceFile;

  @override
  State<ResourceViewerWidget> createState() => _ResourceViewerWidgetState();
}

class _ResourceViewerWidgetState extends State<ResourceViewerWidget> {
  late ResourceViewerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResourceViewerModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'resource_viewer'});
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
                    titleText: widget!.resourceName!,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.85,
                decoration: BoxDecoration(),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: custom_widgets.FlutterPDFViewer(
                    width: double.infinity,
                    height: double.infinity,
                    url: widget!.resourceFile!,
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
