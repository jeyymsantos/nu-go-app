import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/actions/actions.dart' as action_blocks;
import 'admin_content_edit_widget.dart' show AdminContentEditWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AdminContentEditModel extends FlutterFlowModel<AdminContentEditWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for content_title_field widget.
  FocusNode? contentTitleFieldFocusNode;
  TextEditingController? contentTitleFieldTextController;
  String? Function(BuildContext, String?)?
      contentTitleFieldTextControllerValidator;
  String? _contentTitleFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for content_author_field widget.
  FocusNode? contentAuthorFieldFocusNode;
  TextEditingController? contentAuthorFieldTextController;
  String? Function(BuildContext, String?)?
      contentAuthorFieldTextControllerValidator;
  String? _contentAuthorFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for content_type widget.
  String? contentTypeValue;
  FormFieldController<String>? contentTypeValueController;
  // State field(s) for content_field widget.
  FocusNode? contentFieldFocusNode;
  TextEditingController? contentFieldTextController;
  String? Function(BuildContext, String?)? contentFieldTextControllerValidator;
  String? _contentFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmPassword;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    contentTitleFieldTextControllerValidator =
        _contentTitleFieldTextControllerValidator;
    contentAuthorFieldTextControllerValidator =
        _contentAuthorFieldTextControllerValidator;
    contentFieldTextControllerValidator = _contentFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    contentTitleFieldFocusNode?.dispose();
    contentTitleFieldTextController?.dispose();

    contentAuthorFieldFocusNode?.dispose();
    contentAuthorFieldTextController?.dispose();

    contentFieldFocusNode?.dispose();
    contentFieldTextController?.dispose();
  }
}
