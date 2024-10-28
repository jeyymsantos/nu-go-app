import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/actions/actions.dart' as action_blocks;
import 'admin_notif_send_widget.dart' show AdminNotifSendWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AdminNotifSendModel extends FlutterFlowModel<AdminNotifSendWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for subtitle_header component.
  late SubtitleHeaderModel subtitleHeaderModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
  String? _notifTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmPushNotif;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    subtitleHeaderModel = createModel(context, () => SubtitleHeaderModel());
    notifTitleFieldTextControllerValidator =
        _notifTitleFieldTextControllerValidator;
    notifTextFieldTextControllerValidator =
        _notifTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    subtitleHeaderModel.dispose();
    notifTitleFieldFocusNode?.dispose();
    notifTitleFieldTextController?.dispose();

    notifTextFieldFocusNode?.dispose();
    notifTextFieldTextController?.dispose();
  }
}
