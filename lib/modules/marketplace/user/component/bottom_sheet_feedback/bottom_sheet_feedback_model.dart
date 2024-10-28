import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheet_feedback_widget.dart' show BottomSheetFeedbackWidget;
import 'package:flutter/material.dart';

class BottomSheetFeedbackModel
    extends FlutterFlowModel<BottomSheetFeedbackWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();
  }
}
