import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'b_form_and_reservations_gatepass_widget.dart'
    show BFormAndReservationsGatepassWidget;
import 'package:flutter/material.dart';

class BFormAndReservationsGatepassModel
    extends FlutterFlowModel<BFormAndReservationsGatepassWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode1;
  TextEditingController? nUGoTextFieldTextController1;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController1Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode2;
  TextEditingController? nUGoTextFieldTextController2;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController2Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode3;
  TextEditingController? nUGoTextFieldTextController3;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode4;
  TextEditingController? nUGoTextFieldTextController4;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController4Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode5;
  TextEditingController? nUGoTextFieldTextController5;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController5Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode6;
  TextEditingController? nUGoTextFieldTextController6;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController6Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode7;
  TextEditingController? nUGoTextFieldTextController7;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController7Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode8;
  TextEditingController? nUGoTextFieldTextController8;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController8Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    nUGoTextFieldFocusNode1?.dispose();
    nUGoTextFieldTextController1?.dispose();

    nUGoTextFieldFocusNode2?.dispose();
    nUGoTextFieldTextController2?.dispose();

    nUGoTextFieldFocusNode3?.dispose();
    nUGoTextFieldTextController3?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    nUGoTextFieldFocusNode4?.dispose();
    nUGoTextFieldTextController4?.dispose();

    nUGoTextFieldFocusNode5?.dispose();
    nUGoTextFieldTextController5?.dispose();

    nUGoTextFieldFocusNode6?.dispose();
    nUGoTextFieldTextController6?.dispose();

    nUGoTextFieldFocusNode7?.dispose();
    nUGoTextFieldTextController7?.dispose();

    nUGoTextFieldFocusNode8?.dispose();
    nUGoTextFieldTextController8?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
