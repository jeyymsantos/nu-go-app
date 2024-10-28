import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bottom_sheet_update_status_widget.dart'
    show BottomSheetUpdateStatusWidget;
import 'package:flutter/material.dart';

class BottomSheetUpdateStatusModel
    extends FlutterFlowModel<BottomSheetUpdateStatusWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
