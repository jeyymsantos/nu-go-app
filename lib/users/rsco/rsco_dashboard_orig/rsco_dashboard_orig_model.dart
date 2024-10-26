import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/org_management/components/rsco_sidebar/rsco_sidebar_widget.dart';
import 'rsco_dashboard_orig_widget.dart' show RscoDashboardOrigWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class RscoDashboardOrigModel extends FlutterFlowModel<RscoDashboardOrigWidget> {
  ///  Local state fields for this page.

  bool liked = false;

  bool filter = false;

  ///  State fields for stateful widgets in this page.

  // Model for rsco_sidebar component.
  late RscoSidebarModel rscoSidebarModel;

  @override
  void initState(BuildContext context) {
    rscoSidebarModel = createModel(context, () => RscoSidebarModel());
  }

  @override
  void dispose() {
    rscoSidebarModel.dispose();
  }
}
