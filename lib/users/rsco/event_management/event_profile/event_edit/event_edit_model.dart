import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/dialog_box/failed_dialog_box/failed_dialog_box_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/actions/actions.dart' as action_blocks;
import 'event_edit_widget.dart' show EventEditWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
