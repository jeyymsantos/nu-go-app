import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'day_label_component_model.dart';
export 'day_label_component_model.dart';

class DayLabelComponentWidget extends StatefulWidget {
  const DayLabelComponentWidget({
    super.key,
    required this.day,
  });

  final String? day;

  @override
  State<DayLabelComponentWidget> createState() =>
      _DayLabelComponentWidgetState();
}

class _DayLabelComponentWidgetState extends State<DayLabelComponentWidget> {
  late DayLabelComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayLabelComponentModel());

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
      width: 24.0,
      height: 24.0,
      decoration: const BoxDecoration(),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Text(
        widget.day!,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Montserrat',
              color: FlutterFlowTheme.of(context).primary,
              fontSize: 9.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
