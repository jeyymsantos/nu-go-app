import '/backend/backend.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/search_not_found_list/search_not_found_list_widget.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'admin_logs_widget.dart' show AdminLogsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class AdminLogsModel extends FlutterFlowModel<AdminLogsWidget> {
  ///  Local state fields for this page.

  bool filterLevel = false;

  int logType = -1;

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for subtitle_header component.
  late SubtitleHeaderModel subtitleHeaderModel;
  // State field(s) for content_search widget.
  FocusNode? contentSearchFocusNode;
  TextEditingController? contentSearchTextController;
  String? Function(BuildContext, String?)? contentSearchTextControllerValidator;
  List<ActivityLogsRecord> simpleSearchResults1 = [];
  List<ActivityLogsRecord> simpleSearchResults2 = [];
  List<ActivityLogsRecord> simpleSearchResults3 = [];
  List<ActivityLogsRecord> simpleSearchResults4 = [];
  List<ActivityLogsRecord> simpleSearchResults5 = [];
  List<ActivityLogsRecord> simpleSearchResults6 = [];

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    subtitleHeaderModel = createModel(context, () => SubtitleHeaderModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    subtitleHeaderModel.dispose();
    contentSearchFocusNode?.dispose();
    contentSearchTextController?.dispose();
  }
}
