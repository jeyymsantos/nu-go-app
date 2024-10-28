import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'maintenance_equipment_widget.dart' show MaintenanceEquipmentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MaintenanceEquipmentModel
    extends FlutterFlowModel<MaintenanceEquipmentWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for room_assigned_dropdown widget.
  String? roomAssignedDropdownValue;
  FormFieldController<String>? roomAssignedDropdownValueController;
  // State field(s) for equipment_name_field widget.
  FocusNode? equipmentNameFieldFocusNode;
  TextEditingController? equipmentNameFieldTextController;
  String? Function(BuildContext, String?)?
      equipmentNameFieldTextControllerValidator;
  String? _equipmentNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for equipment_tag_field widget.
  FocusNode? equipmentTagFieldFocusNode;
  TextEditingController? equipmentTagFieldTextController;
  String? Function(BuildContext, String?)?
      equipmentTagFieldTextControllerValidator;
  String? _equipmentTagFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for count_controller widget.
  FocusNode? countControllerFocusNode;
  TextEditingController? countControllerTextController;
  String? Function(BuildContext, String?)?
      countControllerTextControllerValidator;
  String? _countControllerTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for equipment_unit widget.
  String? equipmentUnitValue;
  FormFieldController<String>? equipmentUnitValueController;
  // Stores action output result for [Custom Action - getRoomsDocument] action in Save widget.
  RoomsRecord? roomAssignedOutput;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Save widget.
  bool? maintenanceEquipment;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    equipmentNameFieldTextControllerValidator =
        _equipmentNameFieldTextControllerValidator;
    equipmentTagFieldTextControllerValidator =
        _equipmentTagFieldTextControllerValidator;
    countControllerTextControllerValidator =
        _countControllerTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    equipmentNameFieldFocusNode?.dispose();
    equipmentNameFieldTextController?.dispose();

    equipmentTagFieldFocusNode?.dispose();
    equipmentTagFieldTextController?.dispose();

    countControllerFocusNode?.dispose();
    countControllerTextController?.dispose();
  }
}
