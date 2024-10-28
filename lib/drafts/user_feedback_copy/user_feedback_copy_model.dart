import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_feedback_copy_widget.dart' show UserFeedbackCopyWidget;
import 'package:flutter/material.dart';

class UserFeedbackCopyModel extends FlutterFlowModel<UserFeedbackCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for item_name widget.
  FocusNode? itemNameFocusNode;
  TextEditingController? itemNameTextController;
  String? Function(BuildContext, String?)? itemNameTextControllerValidator;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    itemNameFocusNode?.dispose();
    itemNameTextController?.dispose();
  }
}
