import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_facility_type_widget.dart' show ViewFacilityTypeWidget;
import 'package:flutter/material.dart';

class ViewFacilityTypeModel extends FlutterFlowModel<ViewFacilityTypeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for facility_search widget.
  FocusNode? facilitySearchFocusNode;
  TextEditingController? facilitySearchTextController;
  String? Function(BuildContext, String?)?
      facilitySearchTextControllerValidator;
  List<FacilityTypesRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    facilitySearchFocusNode?.dispose();
    facilitySearchTextController?.dispose();
  }
}
