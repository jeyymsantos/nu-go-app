import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dashboar_clickable_button_model.dart';
export 'dashboar_clickable_button_model.dart';

class DashboarClickableButtonWidget extends StatefulWidget {
  const DashboarClickableButtonWidget({super.key});

  @override
  State<DashboarClickableButtonWidget> createState() =>
      _DashboarClickableButtonWidgetState();
}

class _DashboarClickableButtonWidgetState
    extends State<DashboarClickableButtonWidget> {
  late DashboarClickableButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboarClickableButtonModel());
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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
        borderRadius: BorderRadius.circular(68.0),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.settings_outlined,
                color: FlutterFlowTheme.of(context).primary,
                size: 35.0,
              ),
              Text(
                'Settings',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Clan Pro',
                      fontSize: 10.0,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
