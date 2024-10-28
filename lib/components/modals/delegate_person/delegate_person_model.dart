import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'delegate_person_widget.dart' show DelegatePersonWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DelegatePersonModel extends FlutterFlowModel<DelegatePersonWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for approvalNote widget.
  FocusNode? approvalNoteFocusNode;
  TextEditingController? approvalNoteTextController;
  String? Function(BuildContext, String?)? approvalNoteTextControllerValidator;
  String? _approvalNoteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    approvalNoteTextControllerValidator = _approvalNoteTextControllerValidator;
  }

  @override
  void dispose() {
    approvalNoteFocusNode?.dispose();
    approvalNoteTextController?.dispose();
  }
}
