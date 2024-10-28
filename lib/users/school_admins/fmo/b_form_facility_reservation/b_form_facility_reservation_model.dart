import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'b_form_facility_reservation_widget.dart'
    show BFormFacilityReservationWidget;
import 'package:flutter/material.dart';

class BFormFacilityReservationModel
    extends FlutterFlowModel<BFormFacilityReservationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode1;
  TextEditingController? nUGoTextFieldTextController1;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode2;
  TextEditingController? nUGoTextFieldTextController2;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController2Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode3;
  TextEditingController? nUGoTextFieldTextController3;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController3Validator;
  // State field(s) for NUGo_TextField widget.
  FocusNode? nUGoTextFieldFocusNode4;
  TextEditingController? nUGoTextFieldTextController4;
  String? Function(BuildContext, String?)?
      nUGoTextFieldTextController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
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

    nUGoTextFieldFocusNode4?.dispose();
    nUGoTextFieldTextController4?.dispose();

    textFieldFocusNode1?.dispose();
    textController5?.dispose();

    textFieldFocusNode2?.dispose();
    textController6?.dispose();
  }
}
