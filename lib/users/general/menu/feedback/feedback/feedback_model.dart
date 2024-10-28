import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'feedback_widget.dart' show FeedbackWidget;
import 'package:flutter/material.dart';

class FeedbackModel extends FlutterFlowModel<FeedbackWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for feedback_type widget.
  String? feedbackTypeValue;
  FormFieldController<String>? feedbackTypeValueController;
  // State field(s) for feedback_text widget.
  FocusNode? feedbackTextFocusNode;
  TextEditingController? feedbackTextTextController;
  String? Function(BuildContext, String?)? feedbackTextTextControllerValidator;
  String? _feedbackTextTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Firestore Query - Query a collection] action in Save widget.
  List<UsersRecord>? allSuperAdmin;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    feedbackTextTextControllerValidator = _feedbackTextTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    feedbackTextFocusNode?.dispose();
    feedbackTextTextController?.dispose();
  }
}
