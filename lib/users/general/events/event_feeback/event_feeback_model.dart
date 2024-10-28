import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_feeback_widget.dart' show EventFeebackWidget;
import 'package:flutter/material.dart';

class EventFeebackModel extends FlutterFlowModel<EventFeebackWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for eventFeedback widget.
  FocusNode? eventFeedbackFocusNode;
  TextEditingController? eventFeedbackTextController;
  String? Function(BuildContext, String?)? eventFeedbackTextControllerValidator;
  String? _eventFeedbackTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<MembersRecord>? officersList;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    eventFeedbackTextControllerValidator =
        _eventFeedbackTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    eventFeedbackFocusNode?.dispose();
    eventFeedbackTextController?.dispose();
  }
}
