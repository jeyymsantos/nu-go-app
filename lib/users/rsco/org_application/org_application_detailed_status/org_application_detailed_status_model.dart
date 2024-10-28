import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/approver_circle_head/approver_circle_head_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'org_application_detailed_status_widget.dart'
    show OrgApplicationDetailedStatusWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrgApplicationDetailedStatusModel
    extends FlutterFlowModel<OrgApplicationDetailedStatusWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Models for dynamicApproval.
  late FlutterFlowDynamicModels<ApproverCircleHeadModel> dynamicApprovalModels;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    dynamicApprovalModels =
        FlutterFlowDynamicModels(() => ApproverCircleHeadModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    dynamicApprovalModels.dispose();
  }
}
