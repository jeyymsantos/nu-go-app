import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/users/rsco/event_management/event_proposal/components/platform_choice/platform_choice_widget.dart';
import 'event_proposal_step2_widget.dart' show EventProposalStep2Widget;
import 'package:flutter/material.dart';

class EventProposalStep2Model
    extends FlutterFlowModel<EventProposalStep2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for PlatformChoice component.
  late PlatformChoiceModel platformChoiceModel;
  // State field(s) for platformText widget.
  FocusNode? platformTextFocusNode;
  TextEditingController? platformTextTextController;
  String? Function(BuildContext, String?)? platformTextTextControllerValidator;
  // State field(s) for link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;
  String? _linkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(https?:\\/\\/)?([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}(\\/[^\\s]*)?\$')
        .hasMatch(val)) {
      return 'Only valid links are allowed.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    platformChoiceModel = createModel(context, () => PlatformChoiceModel());
    linkTextControllerValidator = _linkTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    platformChoiceModel.dispose();
    platformTextFocusNode?.dispose();
    platformTextTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();
  }
}
