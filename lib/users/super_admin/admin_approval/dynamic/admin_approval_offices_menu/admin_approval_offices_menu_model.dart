import '/components/widgets/card_with_description/card_with_description_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_approval_offices_menu_widget.dart'
    show AdminApprovalOfficesMenuWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminApprovalOfficesMenuModel
    extends FlutterFlowModel<AdminApprovalOfficesMenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for cardWithDescription component.
  late CardWithDescriptionModel cardWithDescriptionModel1;
  // Model for cardWithDescription component.
  late CardWithDescriptionModel cardWithDescriptionModel2;
  // Model for cardWithDescription component.
  late CardWithDescriptionModel cardWithDescriptionModel3;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    cardWithDescriptionModel1 =
        createModel(context, () => CardWithDescriptionModel());
    cardWithDescriptionModel2 =
        createModel(context, () => CardWithDescriptionModel());
    cardWithDescriptionModel3 =
        createModel(context, () => CardWithDescriptionModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    cardWithDescriptionModel1.dispose();
    cardWithDescriptionModel2.dispose();
    cardWithDescriptionModel3.dispose();
  }
}
