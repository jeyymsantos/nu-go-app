import '/backend/backend.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/org_type/org_type_widget.dart';
import '/components/widgets/search_not_found_list/search_not_found_list_widget.dart';
import '/components/widgets/user_header_component/user_header_component_widget.dart';
import '/components/widgets/user_nav_bar_component/user_nav_bar_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'explore_organization_widget.dart' show ExploreOrganizationWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

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
