import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'admin_notif_send_widget.dart' show AdminNotifSendWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AdminNotifSendModel extends FlutterFlowModel<AdminNotifSendWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for notif_title_field widget.
  FocusNode? notifTitleFieldFocusNode;
  TextEditingController? notifTitleFieldTextController;
  String? Function(BuildContext, String?)?
      notifTitleFieldTextControllerValidator;
  String? _notifTitleFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for notif_text_field widget.
  FocusNode? notifTextFieldFocusNode;
  TextEditingController? notifTextFieldTextController;
  String? Function(BuildContext, String?)?
      notifTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    notifTitleFieldTextControllerValidator =
        _notifTitleFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    notifTitleFieldFocusNode?.dispose();
    notifTitleFieldTextController?.dispose();

    notifTextFieldFocusNode?.dispose();
    notifTextFieldTextController?.dispose();
  }
}
