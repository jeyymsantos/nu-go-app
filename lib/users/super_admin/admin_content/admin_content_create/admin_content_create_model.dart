import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_content_create_widget.dart' show AdminContentCreateWidget;
import 'package:flutter/material.dart';

class AdminContentCreateModel
    extends FlutterFlowModel<AdminContentCreateWidget> {
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
  bool? confirmDialog;

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
