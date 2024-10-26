import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'photo_viewer_model.dart';
export 'photo_viewer_model.dart';

class PhotoViewerWidget extends StatefulWidget {
  const PhotoViewerWidget({
    super.key,
    required this.photoName,
    required this.photoLink,
  });

  final String? photoName;
  final String? photoLink;

  @override
  State<PhotoViewerWidget> createState() => _PhotoViewerWidgetState();
}

class _PhotoViewerWidgetState extends State<PhotoViewerWidget> {
  late PhotoViewerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhotoViewerModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'photo_viewer'});
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
                    titleText: widget!.photoName!,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.85,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.network(
                      valueOrDefault<String>(
                        widget!.photoLink,
                        'https://national-u.edu.ph/wp-content/uploads/2020/07/NU_Globe-768x994.jpg',
                      ),
                    ).image,
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
