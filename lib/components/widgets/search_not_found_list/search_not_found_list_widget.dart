import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'search_not_found_list_model.dart';
export 'search_not_found_list_model.dart';

class SearchNotFoundListWidget extends StatefulWidget {
  const SearchNotFoundListWidget({
    super.key,
    required this.emptyWhat,
  });

  final String? emptyWhat;

  @override
  State<SearchNotFoundListWidget> createState() =>
      _SearchNotFoundListWidgetState();
}

class _SearchNotFoundListWidgetState extends State<SearchNotFoundListWidget> {
  late SearchNotFoundListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchNotFoundListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Lottie.asset(
            'assets/jsons/Search.json',
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 212.0,
            fit: BoxFit.contain,
            animate: true,
          ),
          RichText(
            textScaler: MediaQuery.of(context).textScaler,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'We couldn\'t find any results for \"',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        letterSpacing: 0.0,
                      ),
                ),
                TextSpan(
                  text: valueOrDefault<String>(
                    widget.emptyWhat,
                    'searched info',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: '\" Try refining your search or check for any typos.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        letterSpacing: 0.0,
                      ),
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    letterSpacing: 0.0,
                  ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
