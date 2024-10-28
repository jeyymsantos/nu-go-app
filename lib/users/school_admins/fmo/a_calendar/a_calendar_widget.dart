import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'a_calendar_model.dart';
export 'a_calendar_model.dart';

class ACalendarWidget extends StatefulWidget {
  const ACalendarWidget({super.key});

  @override
  State<ACalendarWidget> createState() => _ACalendarWidgetState();
}

class _ACalendarWidgetState extends State<ACalendarWidget> {
  late ACalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ACalendarModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'a_calendar'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('A_CALENDAR_PAGE_a_calendar_ON_INIT_STATE');
      logFirebaseEvent('a_calendar_update_page_state');
      _model.addToChartData(ChartDataStruct(
        xTitle: 'January',
        yValue1: 30,
        yValue2: 15,
      ));
      safeSetState(() {});
      logFirebaseEvent('a_calendar_update_page_state');
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
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: wrapWithModel(
                    model: _model.titleHeaderComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const TitleHeaderComponentWidget(
                      titleText: 'Calendar',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: SizedBox(
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
