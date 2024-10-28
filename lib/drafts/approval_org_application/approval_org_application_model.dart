import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'approval_org_application_widget.dart' show ApprovalOrgApplicationWidget;
import 'dart:async';
import 'package:flutter/material.dart';

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
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = documentRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
