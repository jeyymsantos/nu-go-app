import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'approval_org_application_widget.dart' show ApprovalOrgApplicationWidget;
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ApprovalOrgApplicationModel
    extends FlutterFlowModel<ApprovalOrgApplicationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Alert Dialog - Custom Dialog] action in ButtonApprove widget.
  bool? confirmDialog;
  Completer<UsersRecord>? documentRequestCompleter;
  // State field(s) for revision_message widget.
  FocusNode? revisionMessageFocusNode;
  TextEditingController? revisionMessageTextController;
  String? Function(BuildContext, String?)?
      revisionMessageTextControllerValidator;
  String? _revisionMessageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialogRevision;
  // State field(s) for decline_message widget.
  FocusNode? declineMessageFocusNode;
  TextEditingController? declineMessageTextController;
  String? Function(BuildContext, String?)?
      declineMessageTextControllerValidator;
  String? _declineMessageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialogDecline;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    revisionMessageTextControllerValidator =
        _revisionMessageTextControllerValidator;
    declineMessageTextControllerValidator =
        _declineMessageTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    tabBarController?.dispose();
    revisionMessageFocusNode?.dispose();
    revisionMessageTextController?.dispose();

    declineMessageFocusNode?.dispose();
    declineMessageTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForDocumentRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = documentRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
