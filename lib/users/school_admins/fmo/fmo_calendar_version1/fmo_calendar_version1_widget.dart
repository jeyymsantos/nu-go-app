import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fmo_calendar_version1_model.dart';
export 'fmo_calendar_version1_model.dart';

class FmoCalendarVersion1Widget extends StatefulWidget {
  const FmoCalendarVersion1Widget({super.key});

  @override
  State<FmoCalendarVersion1Widget> createState() =>
      _FmoCalendarVersion1WidgetState();
}

class _FmoCalendarVersion1WidgetState extends State<FmoCalendarVersion1Widget> {
  late FmoCalendarVersion1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FmoCalendarVersion1Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'fmo_calendar_version1'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FMO_CALENDAR_VERSION1_fmo_calendar_versi');
      logFirebaseEvent('fmo_calendar_version1_update_page_state');
      _model.addToChartData(ChartDataStruct(
        xTitle: 'January',
        yValue1: 30,
        yValue2: 15,
      ));
      safeSetState(() {});
      logFirebaseEvent('fmo_calendar_version1_update_page_state');
      _model.addToChartData(ChartDataStruct(
        xTitle: 'February',
        yValue1: 45,
        yValue2: 30,
      ));
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: wrapWithModel(
                    model: _model.titleHeaderComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: TitleHeaderComponentWidget(
                      titleText: 'Calendar',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        width: double.infinity,
                        height: 300.0,
                        child: custom_widgets.CalendarWidgetSyncfusion(
                          width: double.infinity,
                          height: 300.0,
                          dataSource: FFAppState().eventList,
                        ),
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
