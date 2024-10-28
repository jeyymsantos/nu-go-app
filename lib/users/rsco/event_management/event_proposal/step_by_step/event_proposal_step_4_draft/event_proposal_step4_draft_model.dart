import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'event_proposal_step4_draft_widget.dart'
    show EventProposalStep4DraftWidget;
import 'package:flutter/material.dart';

class EventProposalStep4DraftModel
    extends FlutterFlowModel<EventProposalStep4DraftWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for supplier_rb widget.
  FormFieldController<String>? supplierRbValueController;
  // State field(s) for transportvehicle_rb widget.
  FormFieldController<String>? transportvehicleRbValueController;
  // State field(s) for assetrtansfer_rb widget.
  FormFieldController<String>? assetrtansferRbValueController;
  // State field(s) for joborder_rb widget.
  FormFieldController<String>? joborderRbValueController;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }

  /// Additional helper methods.
  String? get supplierRbValue => supplierRbValueController?.value;
  String? get transportvehicleRbValue =>
      transportvehicleRbValueController?.value;
  String? get assetrtansferRbValue => assetrtansferRbValueController?.value;
  String? get joborderRbValue => joborderRbValueController?.value;
}
