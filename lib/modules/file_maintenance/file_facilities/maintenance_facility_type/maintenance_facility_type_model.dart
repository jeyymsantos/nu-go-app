import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'maintenance_facility_type_widget.dart'
    show MaintenanceFacilityTypeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MaintenanceFacilityTypeModel
    extends FlutterFlowModel<MaintenanceFacilityTypeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for facility_name_field widget.
  FocusNode? facilityNameFieldFocusNode;
  TextEditingController? facilityNameFieldTextController;
  String? Function(BuildContext, String?)?
      facilityNameFieldTextControllerValidator;
  String? _facilityNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for facility_nickname_field widget.
  FocusNode? facilityNicknameFieldFocusNode;
  TextEditingController? facilityNicknameFieldTextController;
  String? Function(BuildContext, String?)?
      facilityNicknameFieldTextControllerValidator;
  // State field(s) for facility_description widget.
  FocusNode? facilityDescriptionFocusNode;
  TextEditingController? facilityDescriptionTextController;
  String? Function(BuildContext, String?)?
      facilityDescriptionTextControllerValidator;
  String? _facilityDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    facilityNameFieldTextControllerValidator =
        _facilityNameFieldTextControllerValidator;
    facilityDescriptionTextControllerValidator =
        _facilityDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    facilityNameFieldFocusNode?.dispose();
    facilityNameFieldTextController?.dispose();

    facilityNicknameFieldFocusNode?.dispose();
    facilityNicknameFieldTextController?.dispose();

    facilityDescriptionFocusNode?.dispose();
    facilityDescriptionTextController?.dispose();
  }
}
