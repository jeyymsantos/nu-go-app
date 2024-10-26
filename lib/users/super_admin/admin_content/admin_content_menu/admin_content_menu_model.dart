import '/backend/backend.dart';
import '/components/widgets/card_with_description/card_with_description_widget.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_content_menu_widget.dart' show AdminContentMenuWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminContentMenuModel extends FlutterFlowModel<AdminContentMenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Model for subtitle_header component.
  late SubtitleHeaderModel subtitleHeaderModel;
  // Model for cardWithDescription component.
  late CardWithDescriptionModel cardWithDescriptionModel1;
  // Model for cardWithDescription component.
  late CardWithDescriptionModel cardWithDescriptionModel2;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    subtitleHeaderModel = createModel(context, () => SubtitleHeaderModel());
    cardWithDescriptionModel1 =
        createModel(context, () => CardWithDescriptionModel());
    cardWithDescriptionModel2 =
        createModel(context, () => CardWithDescriptionModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    subtitleHeaderModel.dispose();
    cardWithDescriptionModel1.dispose();
    cardWithDescriptionModel2.dispose();
  }
}
