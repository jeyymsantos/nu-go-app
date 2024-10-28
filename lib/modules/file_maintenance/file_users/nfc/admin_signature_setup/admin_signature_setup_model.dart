import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_signature_setup_widget.dart' show AdminSignatureSetupWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class AdminSignatureSetupModel
    extends FlutterFlowModel<AdminSignatureSetupWidget> {
  ///  Local state fields for this page.

  bool scanClicked = false;

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for Signature widget.
  SignatureController? signatureController;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;
  String uploadedSignatureUrl = '';

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    signatureController?.dispose();
  }
}
