import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'event_edit_widget.dart' show EventEditWidget;
import 'package:flutter/material.dart';

class EventEditModel extends FlutterFlowModel<EventEditWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
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
  // State field(s) for max_attendees widget.
  FocusNode? maxAttendeesFocusNode;
  TextEditingController? maxAttendeesTextController;
  String? Function(BuildContext, String?)? maxAttendeesTextControllerValidator;
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

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmCancel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<EventAttendeesRecord>? allGuests;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    rationaleTextControllerValidator = _rationaleTextControllerValidator;
    objectivesTextControllerValidator = _objectivesTextControllerValidator;
    targetOutputTextControllerValidator = _targetOutputTextControllerValidator;
    activityNameTextControllerValidator = _activityNameTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    tabBarController?.dispose();
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    maxAttendeesFocusNode?.dispose();
    maxAttendeesTextController?.dispose();

    rationaleFocusNode?.dispose();
    rationaleTextController?.dispose();

    objectivesFocusNode?.dispose();
    objectivesTextController?.dispose();

    targetOutputFocusNode?.dispose();
    targetOutputTextController?.dispose();

    activityNameFocusNode?.dispose();
    activityNameTextController?.dispose();
  }
}
