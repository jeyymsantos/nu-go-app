import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_programs_widget.dart' show ViewProgramsWidget;
import 'package:flutter/material.dart';

class ViewProgramsModel extends FlutterFlowModel<ViewProgramsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for program_search widget.
  FocusNode? programSearchFocusNode;
  TextEditingController? programSearchTextController;
  String? Function(BuildContext, String?)? programSearchTextControllerValidator;
  List<ProgramsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    programSearchFocusNode?.dispose();
    programSearchTextController?.dispose();
  }
}
