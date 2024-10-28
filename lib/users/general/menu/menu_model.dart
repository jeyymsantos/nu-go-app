import '/backend/backend.dart';
import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getProgramDocument] action in menu widget.
  ProgramsRecord? programOutput;
  // Stores action output result for [Custom Action - getSchoolDocument] action in menu widget.
  SchoolsRecord? schoolOutput;
  // Model for UserHeaderComponent component.
  late UserHeaderComponentModel userHeaderComponentModel;
  // Model for UserNavBarComponent component.
  late UserNavBarComponentModel userNavBarComponentModel;

  @override
  void initState(BuildContext context) {
    userHeaderComponentModel =
        createModel(context, () => UserHeaderComponentModel());
    userNavBarComponentModel =
        createModel(context, () => UserNavBarComponentModel());
  }

  @override
  void dispose() {
    userHeaderComponentModel.dispose();
    userNavBarComponentModel.dispose();
  }
}
