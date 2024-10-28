import '/components/widgets/card/card_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_team_widget.dart' show OurTeamWidget;
import 'package:flutter/material.dart';

class OurTeamModel extends FlutterFlowModel<OurTeamWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for Benjamin.
  late CardModel benjaminModel;
  // Model for Junnie.
  late CardModel junnieModel;
  // Model for Nichole.
  late CardModel nicholeModel;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    benjaminModel = createModel(context, () => CardModel());
    junnieModel = createModel(context, () => CardModel());
    nicholeModel = createModel(context, () => CardModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    benjaminModel.dispose();
    junnieModel.dispose();
    nicholeModel.dispose();
  }
}
