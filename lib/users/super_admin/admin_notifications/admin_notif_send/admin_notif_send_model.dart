import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_notif_send_widget.dart' show AdminNotifSendWidget;
import 'package:flutter/material.dart';

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
