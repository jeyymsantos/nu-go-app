import '/flutter_flow/flutter_flow_util.dart';
import 'onboard_three_widget.dart' show OnboardThreeWidget;
import 'package:flutter/material.dart';

class OnboardThreeModel extends FlutterFlowModel<OnboardThreeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for description_field widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldController;
  String? Function(BuildContext, String?)? descriptionFieldControllerValidator;
  String? _descriptionFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    descriptionFieldControllerValidator = _descriptionFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionFieldFocusNode?.dispose();
    descriptionFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
