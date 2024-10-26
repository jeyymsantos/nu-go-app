import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_menu_card_model.dart';
export 'admin_menu_card_model.dart';

class AdminMenuCardWidget extends StatefulWidget {
  const AdminMenuCardWidget({
    super.key,
    required this.moduleIcon,
    required this.moduleName,
    required this.moduleDescription,
    required this.accessLevelIcon,
    required this.accessLevelLabel,
    required this.color,
  });

  final Widget? moduleIcon;
  final String? moduleName;
  final String? moduleDescription;
  final Widget? accessLevelIcon;
  final String? accessLevelLabel;
  final Color? color;

  @override
  State<AdminMenuCardWidget> createState() => _AdminMenuCardWidgetState();
}

class _AdminMenuCardWidgetState extends State<AdminMenuCardWidget> {
  late AdminMenuCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminMenuCardModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).tabBarBorder,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x87E5E5E5),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: widget!.moduleIcon!,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.moduleName,
                        'Approval Management',
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              valueOrDefault<String>(
                widget!.moduleDescription,
                'Manage approval sets that can be used in certain modules.',
              ),
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 11.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                widget!.accessLevelIcon!,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.accessLevelLabel,
                      'High Access',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: widget!.color,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
