import '/components/calendar/day_label_component/day_label_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'calendar_component_model.dart';
export 'calendar_component_model.dart';

class CalendarComponentWidget extends StatefulWidget {
  const CalendarComponentWidget({
    super.key,
    required this.inputDate,
    this.initialSelectedDate,
    required this.onSelectDateAction,
  });

  final DateTime? inputDate;
  final DateTime? initialSelectedDate;
  final Future Function(DateTime selectedDate)? onSelectDateAction;

  @override
  State<CalendarComponentWidget> createState() =>
      _CalendarComponentWidgetState();
}

class _CalendarComponentWidgetState extends State<CalendarComponentWidget> {
  late CalendarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CALENDAR_COMPONENT_CalendarComponent_ON_');
      logFirebaseEvent('CalendarComponent_update_component_state');
      _model.inputDate = widget.inputDate;
      safeSetState(() {});
      if (widget.initialSelectedDate != null) {
        logFirebaseEvent('CalendarComponent_update_component_state');
        _model.selectedDate = widget.initialSelectedDate;
        safeSetState(() {});
      }
    });

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
      width: 320.0,
      height: 340.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        dateTimeFormat(
                          "MMMM",
                          _model.inputDate,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        dateTimeFormat(
                          "y",
                          _model.inputDate,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ].divide(const SizedBox(width: 4.0)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: 26.0,
                  borderWidth: 1.0,
                  buttonSize: 34.0,
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  icon: Icon(
                    FFIcons.kundo4,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 20.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ].addToStart(const SizedBox(width: 24.0)).addToEnd(const SizedBox(width: 24.0)),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.dayLabelComponentModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const DayLabelComponentWidget(
                      day: 'Mon',
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.dayLabelComponentModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: const DayLabelComponentWidget(
                      day: 'Tue',
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.dayLabelComponentModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: const DayLabelComponentWidget(
                      day: 'Wed',
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.dayLabelComponentModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: const DayLabelComponentWidget(
                      day: 'Thu',
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.dayLabelComponentModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: const DayLabelComponentWidget(
                      day: 'Fri',
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.dayLabelComponentModel6,
                    updateCallback: () => safeSetState(() {}),
                    child: const DayLabelComponentWidget(
                      day: 'Sat',
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.dayLabelComponentModel7,
                    updateCallback: () => safeSetState(() {}),
                    child: const DayLabelComponentWidget(
                      day: 'Sun',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 202.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Builder(
                builder: (context) {
                  final calendar = functions
                      .getCalendarForMonth(getCurrentTimestamp)
                      .toList();

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      crossAxisSpacing: 18.0,
                      mainAxisSpacing: 12.0,
                      childAspectRatio: 1.0,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: calendar.length,
                    itemBuilder: (context, calendarIndex) {
                      final calendarItem = calendar[calendarIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CALENDAR_COMPONENT_Container_wzq89e0x_ON');
                          logFirebaseEvent('Container_update_component_state');
                          _model.selectedDate = calendarItem.calendarDate;
                          safeSetState(() {});
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelectDateAction?.call(
                            _model.selectedDate!,
                          );
                        },
                        child: Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            color: dateTimeFormat(
                                      "d/M/y",
                                      calendarItem.calendarDate,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ) ==
                                    dateTimeFormat(
                                      "d/M/y",
                                      _model.selectedDate,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                ? FlutterFlowTheme.of(context).primary
                                : const Color(0x00000000),
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            dateTimeFormat(
                              "d",
                              dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                                calendarItem.calendarDate?.secondsSinceEpoch,
                                0,
                              )),
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Container(
            height: 40.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Transform.rotate(
                      angle: 180.0 * (math.pi / 180),
                      child: FlutterFlowIconButton(
                        borderRadius: 26.0,
                        borderWidth: 1.0,
                        buttonSize: 34.0,
                        icon: Icon(
                          FFIcons.knext5,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 26.0,
                      borderWidth: 1.0,
                      buttonSize: 34.0,
                      icon: Icon(
                        FFIcons.knext5,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ].addToStart(const SizedBox(height: 16.0)),
      ),
    );
  }
}
