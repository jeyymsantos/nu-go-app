import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_nfc_setup_widget.dart' show AdminNfcSetupWidget;
import 'package:flutter/material.dart';

class AdminNfcSetupModel extends FlutterFlowModel<AdminNfcSetupWidget> {
  ///  Local state fields for this page.

  bool scanClicked = false;

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? nfcCount;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }
}
