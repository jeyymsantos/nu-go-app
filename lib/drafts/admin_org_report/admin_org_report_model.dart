import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'admin_org_report_widget.dart' show AdminOrgReportWidget;
import 'dart:math' as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminOrgReportModel extends FlutterFlowModel<AdminOrgReportWidget> {
  ///  Local state fields for this page.

  List<ReportOrgThenCountStruct> topMembers = [];
  void addToTopMembers(ReportOrgThenCountStruct item) => topMembers.add(item);
  void removeFromTopMembers(ReportOrgThenCountStruct item) =>
      topMembers.remove(item);
  void removeAtIndexFromTopMembers(int index) => topMembers.removeAt(index);
  void insertAtIndexInTopMembers(int index, ReportOrgThenCountStruct item) =>
      topMembers.insert(index, item);
  void updateTopMembersAtIndex(
          int index, Function(ReportOrgThenCountStruct) updateFn) =>
      topMembers[index] = updateFn(topMembers[index]);

  List<ReportOrgThenCountStruct> topOrgEvents = [];
  void addToTopOrgEvents(ReportOrgThenCountStruct item) =>
      topOrgEvents.add(item);
  void removeFromTopOrgEvents(ReportOrgThenCountStruct item) =>
      topOrgEvents.remove(item);
  void removeAtIndexFromTopOrgEvents(int index) => topOrgEvents.removeAt(index);
  void insertAtIndexInTopOrgEvents(int index, ReportOrgThenCountStruct item) =>
      topOrgEvents.insert(index, item);
  void updateTopOrgEventsAtIndex(
          int index, Function(ReportOrgThenCountStruct) updateFn) =>
      topOrgEvents[index] = updateFn(topOrgEvents[index]);

  List<ReportEventThenCountStruct> topEventAttendees = [];
  void addToTopEventAttendees(ReportEventThenCountStruct item) =>
      topEventAttendees.add(item);
  void removeFromTopEventAttendees(ReportEventThenCountStruct item) =>
      topEventAttendees.remove(item);
  void removeAtIndexFromTopEventAttendees(int index) =>
      topEventAttendees.removeAt(index);
  void insertAtIndexInTopEventAttendees(
          int index, ReportEventThenCountStruct item) =>
      topEventAttendees.insert(index, item);
  void updateTopEventAttendeesAtIndex(
          int index, Function(ReportEventThenCountStruct) updateFn) =>
      topEventAttendees[index] = updateFn(topEventAttendees[index]);

  List<ReportEventThenCountStruct> topEventRating = [];
  void addToTopEventRating(ReportEventThenCountStruct item) =>
      topEventRating.add(item);
  void removeFromTopEventRating(ReportEventThenCountStruct item) =>
      topEventRating.remove(item);
  void removeAtIndexFromTopEventRating(int index) =>
      topEventRating.removeAt(index);
  void insertAtIndexInTopEventRating(
          int index, ReportEventThenCountStruct item) =>
      topEventRating.insert(index, item);
  void updateTopEventRatingAtIndex(
          int index, Function(ReportEventThenCountStruct) updateFn) =>
      topEventRating[index] = updateFn(topEventRating[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getTopOrgMembers] action in admin_org_report widget.
  List<ReportOrgThenCountStruct>? top5OrgMembers;
  // Stores action output result for [Custom Action - getTopOrgEvent] action in admin_org_report widget.
  List<ReportOrgThenCountStruct>? top5OrgEvent;
  // Stores action output result for [Custom Action - getTopEventAttendees] action in admin_org_report widget.
  List<ReportEventThenCountStruct>? top5EventAttendees;
  // Stores action output result for [Custom Action - getTopEventRating] action in admin_org_report widget.
  List<ReportEventThenCountStruct>? top5EventRating;
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }
}
