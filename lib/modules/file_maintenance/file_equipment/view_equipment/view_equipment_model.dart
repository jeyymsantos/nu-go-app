import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_equipment_widget.dart' show ViewEquipmentWidget;
import 'package:flutter/material.dart';

class ViewEquipmentModel extends FlutterFlowModel<ViewEquipmentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for equipment_search widget.
  FocusNode? equipmentSearchFocusNode;
  TextEditingController? equipmentSearchTextController;
  String? Function(BuildContext, String?)?
      equipmentSearchTextControllerValidator;
  List<EquipmentsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    equipmentSearchFocusNode?.dispose();
    equipmentSearchTextController?.dispose();
  }
}
