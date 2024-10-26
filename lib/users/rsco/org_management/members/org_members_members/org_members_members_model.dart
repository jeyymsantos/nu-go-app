import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/org_management/members/components/add_officer_component/add_officer_component_widget.dart';
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import 'org_members_members_widget.dart' show OrgMembersMembersWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OrgMembersMembersModel extends FlutterFlowModel<OrgMembersMembersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Row widget.
  bool? removeConfirmDialog;

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
