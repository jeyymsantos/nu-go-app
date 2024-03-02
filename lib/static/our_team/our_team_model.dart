import '/components/widgets/card/card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_team_widget.dart' show OurTeamWidget;
import 'package:flutter/material.dart';

class OurTeamModel extends FlutterFlowModel<OurTeamWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Benjamin.
  late CardModel benjaminModel;
  // Model for Junnie.
  late CardModel junnieModel;
  // Model for Nichole.
  late CardModel nicholeModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    benjaminModel = createModel(context, () => CardModel());
    junnieModel = createModel(context, () => CardModel());
    nicholeModel = createModel(context, () => CardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    benjaminModel.dispose();
    junnieModel.dispose();
    nicholeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
