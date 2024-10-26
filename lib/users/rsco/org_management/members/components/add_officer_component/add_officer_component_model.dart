import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'add_officer_component_widget.dart' show AddOfficerComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddOfficerComponentModel
    extends FlutterFlowModel<AddOfficerComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for position widget.
  FocusNode? positionFocusNode;
  TextEditingController? positionTextController;
  String? Function(BuildContext, String?)? positionTextControllerValidator;
  String? _positionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for positionRank widget.
  FocusNode? positionRankFocusNode;
  TextEditingController? positionRankTextController;
  String? Function(BuildContext, String?)? positionRankTextControllerValidator;
  String? _positionRankTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(0?[1-9]|[1-9][0-9])\$').hasMatch(val)) {
      return 'Please input a valid number.';
    }
    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? officerConfirmDialog;

  @override
  void initState(BuildContext context) {
    positionTextControllerValidator = _positionTextControllerValidator;
    positionRankTextControllerValidator = _positionRankTextControllerValidator;
  }

  @override
  void dispose() {
    positionFocusNode?.dispose();
    positionTextController?.dispose();

    positionRankFocusNode?.dispose();
    positionRankTextController?.dispose();
  }
}
