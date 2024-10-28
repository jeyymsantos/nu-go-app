import '/components/widgets/title_only_header_component/title_only_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth_verify_email_widget.dart' show AuthVerifyEmailWidget;
import 'package:flutter/material.dart';

class AuthVerifyEmailModel extends FlutterFlowModel<AuthVerifyEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleOnlyHeaderComponent component.
  late TitleOnlyHeaderComponentModel titleOnlyHeaderComponentModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {
    titleOnlyHeaderComponentModel =
        createModel(context, () => TitleOnlyHeaderComponentModel());
  }

  @override
  void dispose() {
    titleOnlyHeaderComponentModel.dispose();
  }
}
