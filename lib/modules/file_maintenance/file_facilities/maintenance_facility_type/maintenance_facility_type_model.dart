import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'maintenance_facility_type_widget.dart'
    show MaintenanceFacilityTypeWidget;
import 'package:flutter/material.dart';

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
