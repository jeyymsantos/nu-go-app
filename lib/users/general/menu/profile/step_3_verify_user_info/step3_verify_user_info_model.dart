import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'step3_verify_user_info_widget.dart' show Step3VerifyUserInfoWidget;
import 'package:flutter/material.dart';

class Step3VerifyUserInfoModel
    extends FlutterFlowModel<Step3VerifyUserInfoWidget> {
  ///  Local state fields for this page.

  DocumentReference? schoolRef;

  DocumentReference? departmentRef;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for id_number widget.
  FocusNode? idNumberFocusNode;
  TextEditingController? idNumberTextController;
  String? Function(BuildContext, String?)? idNumberTextControllerValidator;
  String? _idNumberTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(20\\d{2}-\\d{6,7}|2\\d-\\d{4})\$').hasMatch(val)) {
      return 'Please enter a valid id number.';
    }
    return null;
  }

  // State field(s) for first_name_field widget.
  FocusNode? firstNameFieldFocusNode;
  TextEditingController? firstNameFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameFieldTextControllerValidator;
  String? _firstNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for middle_name_field widget.
  FocusNode? middleNameFieldFocusNode;
  TextEditingController? middleNameFieldTextController;
  String? Function(BuildContext, String?)?
      middleNameFieldTextControllerValidator;
  // State field(s) for last_name_field widget.
  FocusNode? lastNameFieldFocusNode;
  TextEditingController? lastNameFieldTextController;
  String? Function(BuildContext, String?)? lastNameFieldTextControllerValidator;
  String? _lastNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for suffix_field widget.
  FocusNode? suffixFieldFocusNode;
  TextEditingController? suffixFieldTextController;
  String? Function(BuildContext, String?)? suffixFieldTextControllerValidator;
  // State field(s) for civil_status_dropdown widget.
  String? civilStatusDropdownValue;
  FormFieldController<String>? civilStatusDropdownValueController;
  // State field(s) for sex_radio_button widget.
  FormFieldController<String>? sexRadioButtonValueController;
  // State field(s) for phone_number_field widget.
  FocusNode? phoneNumberFieldFocusNode;
  TextEditingController? phoneNumberFieldTextController;
  String? Function(BuildContext, String?)?
      phoneNumberFieldTextControllerValidator;
  String? _phoneNumberFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^09\\d{9}\$').hasMatch(val)) {
      return 'Please enter a valid phone number.';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for number_address_field widget.
  FocusNode? numberAddressFieldFocusNode;
  TextEditingController? numberAddressFieldTextController;
  String? Function(BuildContext, String?)?
      numberAddressFieldTextControllerValidator;
  String? _numberAddressFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for street_address_field widget.
  FocusNode? streetAddressFieldFocusNode;
  TextEditingController? streetAddressFieldTextController;
  String? Function(BuildContext, String?)?
      streetAddressFieldTextControllerValidator;
  String? _streetAddressFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for provinces_dropdown widget.
  String? provincesDropdownValue;
  FormFieldController<String>? provincesDropdownValueController;
  // State field(s) for city_dropdown widget.
  String? cityDropdownValue;
  FormFieldController<String>? cityDropdownValueController;
  // State field(s) for barangay_dropdown widget.
  String? barangayDropdownValue;
  FormFieldController<String>? barangayDropdownValueController;
  // State field(s) for school_dropdown widget.
  String? schoolDropdownValue;
  FormFieldController<String>? schoolDropdownValueController;
  // Stores action output result for [Custom Action - getSchoolDocument] action in school_dropdown widget.
  SchoolsRecord? schoolOutput;
  // State field(s) for department widget.
  String? departmentValue;
  FormFieldController<String>? departmentValueController;
  // Stores action output result for [Custom Action - getProgramDocument] action in department widget.
  ProgramsRecord? departmentOutput;
  // State field(s) for section_field widget.
  FocusNode? sectionFieldFocusNode;
  TextEditingController? sectionFieldTextController;
  String? Function(BuildContext, String?)? sectionFieldTextControllerValidator;
  // State field(s) for role_dropdown widget.
  String? roleDropdownValue;
  FormFieldController<String>? roleDropdownValueController;
  // State field(s) for honorifics widget.
  String? honorificsValue;
  FormFieldController<String>? honorificsValueController;
  // State field(s) for emp_school_dropdown widget.
  String? empSchoolDropdownValue;
  FormFieldController<String>? empSchoolDropdownValueController;
  // Stores action output result for [Custom Action - getSchoolDocument] action in emp_school_dropdown widget.
  SchoolsRecord? empSchoolOutput;
  // State field(s) for emp_department widget.
  String? empDepartmentValue;
  FormFieldController<String>? empDepartmentValueController;
  // Stores action output result for [Custom Action - getProgramDocument] action in emp_department widget.
  ProgramsRecord? empDepartmentOutput;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in onboard_one_button widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    idNumberTextControllerValidator = _idNumberTextControllerValidator;
    firstNameFieldTextControllerValidator =
        _firstNameFieldTextControllerValidator;
    lastNameFieldTextControllerValidator =
        _lastNameFieldTextControllerValidator;
    phoneNumberFieldTextControllerValidator =
        _phoneNumberFieldTextControllerValidator;
    numberAddressFieldTextControllerValidator =
        _numberAddressFieldTextControllerValidator;
    streetAddressFieldTextControllerValidator =
        _streetAddressFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    idNumberFocusNode?.dispose();
    idNumberTextController?.dispose();

    firstNameFieldFocusNode?.dispose();
    firstNameFieldTextController?.dispose();

    middleNameFieldFocusNode?.dispose();
    middleNameFieldTextController?.dispose();

    lastNameFieldFocusNode?.dispose();
    lastNameFieldTextController?.dispose();

    suffixFieldFocusNode?.dispose();
    suffixFieldTextController?.dispose();

    phoneNumberFieldFocusNode?.dispose();
    phoneNumberFieldTextController?.dispose();

    numberAddressFieldFocusNode?.dispose();
    numberAddressFieldTextController?.dispose();

    streetAddressFieldFocusNode?.dispose();
    streetAddressFieldTextController?.dispose();

    sectionFieldFocusNode?.dispose();
    sectionFieldTextController?.dispose();
  }

  /// Additional helper methods.
  String? get sexRadioButtonValue => sexRadioButtonValueController?.value;
}
