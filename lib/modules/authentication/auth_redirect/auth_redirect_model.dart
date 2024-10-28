import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'auth_redirect_widget.dart' show AuthRedirectWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AuthRedirectModel extends FlutterFlowModel<AuthRedirectWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getVersionNumber] action in auth_redirect widget.
  String? version;
  // Stores action output result for [Backend Call - Read Document] action in auth_redirect widget.
  DefaultsRecord? isMaintenanceChecker;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
