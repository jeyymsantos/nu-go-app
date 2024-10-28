import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_users_widget.dart' show ViewUsersWidget;
import 'package:flutter/material.dart';

class ViewUsersModel extends FlutterFlowModel<ViewUsersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for search_field widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<UsersRecord>? onboardedUsers;
  List<UsersRecord> simpleSearchResults = [];
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Icon widget.
  bool? confirmDeleteUser;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Icon widget.
  bool? confirmDeleteUserSearched;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();
  }
}
