import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth_verify_role_widget.dart' show AuthVerifyRoleWidget;
import 'package:flutter/material.dart';

class AuthVerifyRoleModel extends FlutterFlowModel<AuthVerifyRoleWidget> {
  ///  Local state fields for this page.

  bool emailVerified = false;

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;

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
