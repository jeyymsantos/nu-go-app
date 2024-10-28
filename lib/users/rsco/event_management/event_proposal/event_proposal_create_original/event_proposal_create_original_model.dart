import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'event_proposal_create_original_widget.dart'
    show EventProposalCreateOriginalWidget;
import 'package:flutter/material.dart';

class EventProposalCreateOriginalModel
    extends FlutterFlowModel<EventProposalCreateOriginalWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - getEventsDocument] action in event_proposal_create_original widget.
  EventsRecord? eventAppState;
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for event_name widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for rationale widget.
  FocusNode? rationaleFocusNode;
  TextEditingController? rationaleTextController;
  String? Function(BuildContext, String?)? rationaleTextControllerValidator;
  String? _rationaleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for objectives widget.
  FocusNode? objectivesFocusNode;
  TextEditingController? objectivesTextController;
  String? Function(BuildContext, String?)? objectivesTextControllerValidator;
  String? _objectivesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for facility widget.
  String? facilityValue;
  FormFieldController<String>? facilityValueController;
  // State field(s) for target_participants widget.
  String? targetParticipantsValue;
  FormFieldController<String>? targetParticipantsValueController;
  // State field(s) for target_output widget.
  FocusNode? targetOutputFocusNode;
  TextEditingController? targetOutputTextController;
  String? Function(BuildContext, String?)? targetOutputTextControllerValidator;
  String? _targetOutputTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for item_name widget.
  FocusNode? itemNameFocusNode;
  TextEditingController? itemNameTextController;
  String? Function(BuildContext, String?)? itemNameTextControllerValidator;
  String? _itemNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for value widget.
  FocusNode? valueFocusNode;
  TextEditingController? valueTextController;
  String? Function(BuildContext, String?)? valueTextControllerValidator;
  String? _valueTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for quantity widget.
  int? quantityValue;
  // State field(s) for budget_shoulder widget.
  String? budgetShoulderValue;
  FormFieldController<String>? budgetShoulderValueController;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for activity_name widget.
  FocusNode? activityNameFocusNode;
  TextEditingController? activityNameTextController;
  String? Function(BuildContext, String?)? activityNameTextControllerValidator;
  String? _activityNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Custom Action - getRoomsDocument] action in Button widget.
  RoomsRecord? roomOutput;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    rationaleTextControllerValidator = _rationaleTextControllerValidator;
    objectivesTextControllerValidator = _objectivesTextControllerValidator;
    targetOutputTextControllerValidator = _targetOutputTextControllerValidator;
    itemNameTextControllerValidator = _itemNameTextControllerValidator;
    valueTextControllerValidator = _valueTextControllerValidator;
    activityNameTextControllerValidator = _activityNameTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    tabBarController?.dispose();
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    rationaleFocusNode?.dispose();
    rationaleTextController?.dispose();

    objectivesFocusNode?.dispose();
    objectivesTextController?.dispose();

    targetOutputFocusNode?.dispose();
    targetOutputTextController?.dispose();

    itemNameFocusNode?.dispose();
    itemNameTextController?.dispose();

    valueFocusNode?.dispose();
    valueTextController?.dispose();

    activityNameFocusNode?.dispose();
    activityNameTextController?.dispose();
  }
}
