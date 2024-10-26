import '/backend/backend.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'admin_approval_assign_static_widget.dart'
    show AdminApprovalAssignStaticWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminApprovalAssignStaticModel
    extends FlutterFlowModel<AdminApprovalAssignStaticWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for subtitle_header component.
  late SubtitleHeaderModel subtitleHeaderModel;

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
  }
}
