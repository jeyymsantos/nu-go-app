import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'event_proposal_step3_widget.dart' show EventProposalStep3Widget;
import 'package:flutter/material.dart';

class EventProposalStep3Model
    extends FlutterFlowModel<EventProposalStep3Widget> {
  ///  Local state fields for this page.

  String applicationID = 'MayAppID';

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in event_proposal_step_3 widget.
  DefaultsRecord? defaultOutput;
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
  String? _eventNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for target_participants widget.
  String? targetParticipantsValue;
  FormFieldController<String>? targetParticipantsValueController;
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

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for budget_shoulder widget.
  String? budgetShoulderValue;
  FormFieldController<String>? budgetShoulderValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
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
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ApprovalSetsRecord? approvalSet;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  OrganizationsRecord? orgOutput;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  UsersRecord? adviserOutput;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventOutput;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    eventNameTextControllerValidator = _eventNameTextControllerValidator;
    rationaleTextControllerValidator = _rationaleTextControllerValidator;
    objectivesTextControllerValidator = _objectivesTextControllerValidator;
    targetOutputTextControllerValidator = _targetOutputTextControllerValidator;
    itemNameTextControllerValidator = _itemNameTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
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

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    activityNameFocusNode?.dispose();
    activityNameTextController?.dispose();
  }
}
