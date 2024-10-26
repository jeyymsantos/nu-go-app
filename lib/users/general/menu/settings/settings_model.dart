import '/auth/firebase_auth/auth_util.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/general/menu/settings/confirm_deactivate_dialog/confirm_deactivate_dialog_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;

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
