import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'maintenance_rooms_widget.dart' show MaintenanceRoomsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MaintenanceRoomsModel extends FlutterFlowModel<MaintenanceRoomsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for room_number_field widget.
  FocusNode? roomNumberFieldFocusNode;
  TextEditingController? roomNumberFieldTextController;
  String? Function(BuildContext, String?)?
      roomNumberFieldTextControllerValidator;
  String? _roomNumberFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for room_name_field widget.
  FocusNode? roomNameFieldFocusNode;
  TextEditingController? roomNameFieldTextController;
  String? Function(BuildContext, String?)? roomNameFieldTextControllerValidator;
  String? _roomNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for room_max_capacity_field widget.
  FocusNode? roomMaxCapacityFieldFocusNode;
  TextEditingController? roomMaxCapacityFieldTextController;
  String? Function(BuildContext, String?)?
      roomMaxCapacityFieldTextControllerValidator;
  String? _roomMaxCapacityFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for room_designation_dropdown widget.
  String? roomDesignationDropdownValue;
  FormFieldController<String>? roomDesignationDropdownValueController;
  // State field(s) for facility_type_dropdown widget.
  String? facilityTypeDropdownValue;
  FormFieldController<String>? facilityTypeDropdownValueController;
  // Stores action output result for [Custom Action - getOfficeDocument] action in Save widget.
  OfficeRecord? officeDesignationOutput;
  // Stores action output result for [Custom Action - getFacilityTypesDocument] action in Save widget.
  FacilityTypesRecord? facilityTypeOutput;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? confirmFacility;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    roomNumberFieldTextControllerValidator =
        _roomNumberFieldTextControllerValidator;
    roomNameFieldTextControllerValidator =
        _roomNameFieldTextControllerValidator;
    roomMaxCapacityFieldTextControllerValidator =
        _roomMaxCapacityFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    roomNumberFieldFocusNode?.dispose();
    roomNumberFieldTextController?.dispose();

    roomNameFieldFocusNode?.dispose();
    roomNameFieldTextController?.dispose();

    roomMaxCapacityFieldFocusNode?.dispose();
    roomMaxCapacityFieldTextController?.dispose();
  }
}
