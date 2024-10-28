import '/flutter_flow/flutter_flow_util.dart';
import 'onboard_three_widget.dart' show OnboardThreeWidget;
import 'package:flutter/material.dart';

class OnboardThreeModel extends FlutterFlowModel<OnboardThreeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for description_field widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  String? _descriptionFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    descriptionFieldTextControllerValidator =
        _descriptionFieldTextControllerValidator;
  }

  @override
  void dispose() {
    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();
  }
}
