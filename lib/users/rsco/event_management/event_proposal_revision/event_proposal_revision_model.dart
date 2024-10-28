import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/users/rsco/event_management/event_proposal/components/platform_choice/platform_choice_widget.dart';
import 'event_proposal_revision_widget.dart' show EventProposalRevisionWidget;
import 'package:flutter/material.dart';

class EventProposalRevisionModel
    extends FlutterFlowModel<EventProposalRevisionWidget> {
  ///  Local state fields for this page.

  RoomsRecord? roomDoc;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for max_attendees widget.
  FocusNode? maxAttendeesFocusNode;
  TextEditingController? maxAttendeesTextController;
  String? Function(BuildContext, String?)? maxAttendeesTextControllerValidator;
  // State field(s) for online_or_inperson widget.
  FormFieldController<String>? onlineOrInpersonValueController;
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
  // State field(s) for campus_or_outside widget.
  FormFieldController<String>? campusOrOutsideValueController;
  // State field(s) for listOfFacilities widget.
  String? listOfFacilitiesValue;
  FormFieldController<String>? listOfFacilitiesValueController;
  // Stores action output result for [Custom Action - getRoomsDocument] action in listOfFacilities widget.
  RoomsRecord? roomContent;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for event_name widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
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
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
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

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    platformChoiceModel = createModel(context, () => PlatformChoiceModel());
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
    maxAttendeesFocusNode?.dispose();
    maxAttendeesTextController?.dispose();

    platformChoiceModel.dispose();
    platformTextFocusNode?.dispose();
    platformTextTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();

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

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    activityNameFocusNode?.dispose();
    activityNameTextController?.dispose();
  }

  /// Additional helper methods.
  String? get onlineOrInpersonValue => onlineOrInpersonValueController?.value;
  String? get campusOrOutsideValue => campusOrOutsideValueController?.value;
}
