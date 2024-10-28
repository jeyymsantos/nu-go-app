import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'step2_signature_setup_widget.dart' show Step2SignatureSetupWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class Step2SignatureSetupModel
    extends FlutterFlowModel<Step2SignatureSetupWidget> {
  ///  Local state fields for this page.

  bool scanClicked = false;

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for Signature widget.
  SignatureController? signatureController;
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
