import '/auth/firebase_auth/auth_util.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/widgets/title_only_header_component/title_only_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'auth_verify_email_widget.dart' show AuthVerifyEmailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AuthVerifyEmailModel extends FlutterFlowModel<AuthVerifyEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleOnlyHeaderComponent component.
  late TitleOnlyHeaderComponentModel titleOnlyHeaderComponentModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {
    titleOnlyHeaderComponentModel =
        createModel(context, () => TitleOnlyHeaderComponentModel());
  }

  @override
  void dispose() {
    titleOnlyHeaderComponentModel.dispose();
  }
}
