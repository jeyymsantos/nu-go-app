import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'event_proposal_step1_widget.dart' show EventProposalStep1Widget;
import 'package:flutter/material.dart';

class EventProposalStep1Model
    extends FlutterFlowModel<EventProposalStep1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for online_or_inperson widget.
  FormFieldController<String>? onlineOrInpersonValueController;
  // State field(s) for campus_or_outside widget.
  FormFieldController<String>? campusOrOutsideValueController;
  // State field(s) for max_attendees widget.
  FocusNode? maxAttendeesFocusNode;
  TextEditingController? maxAttendeesTextController;
  String? Function(BuildContext, String?)? maxAttendeesTextControllerValidator;
  String? _maxAttendeesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Question #3 is required.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    maxAttendeesTextControllerValidator = _maxAttendeesTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    maxAttendeesFocusNode?.dispose();
    maxAttendeesTextController?.dispose();
  }

  /// Additional helper methods.
  String? get onlineOrInpersonValue => onlineOrInpersonValueController?.value;
  String? get campusOrOutsideValue => campusOrOutsideValueController?.value;
}
