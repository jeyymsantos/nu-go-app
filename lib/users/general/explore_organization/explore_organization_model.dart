import '/backend/backend.dart';
import '/components/widgets/org_type/org_type_widget.dart';
import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_organization_widget.dart' show ExploreOrganizationWidget;
import 'package:flutter/material.dart';

class ExploreOrganizationModel
    extends FlutterFlowModel<ExploreOrganizationWidget> {
  ///  Local state fields for this page.

  bool filter = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<OrganizationsRecord> simpleSearchResults = [];
  // Model for OrgType component.
  late OrgTypeModel orgTypeModel;
  // Model for UserNavBarComponent component.
  late UserNavBarComponentModel userNavBarComponentModel;
  // Model for UserHeaderComponent component.
  late UserHeaderComponentModel userHeaderComponentModel;

  @override
  void initState(BuildContext context) {
    orgTypeModel = createModel(context, () => OrgTypeModel());
    userNavBarComponentModel =
        createModel(context, () => UserNavBarComponentModel());
    userHeaderComponentModel =
        createModel(context, () => UserHeaderComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    orgTypeModel.dispose();
    userNavBarComponentModel.dispose();
    userHeaderComponentModel.dispose();
  }
}
