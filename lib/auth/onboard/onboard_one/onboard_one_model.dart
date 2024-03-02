import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'onboard_one_widget.dart' show OnboardOneWidget;
import 'package:flutter/material.dart';

class OnboardOneModel extends FlutterFlowModel<OnboardOneWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for first_name_field widget.
  FocusNode? firstNameFieldFocusNode;
  TextEditingController? firstNameFieldController;
  String? Function(BuildContext, String?)? firstNameFieldControllerValidator;
  String? _firstNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for middle_name_field widget.
  FocusNode? middleNameFieldFocusNode;
  TextEditingController? middleNameFieldController;
  String? Function(BuildContext, String?)? middleNameFieldControllerValidator;
  String? _middleNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for last_name_field widget.
  FocusNode? lastNameFieldFocusNode;
  TextEditingController? lastNameFieldController;
  String? Function(BuildContext, String?)? lastNameFieldControllerValidator;
  String? _lastNameFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for suffix_field widget.
  FocusNode? suffixFieldFocusNode;
  TextEditingController? suffixFieldController;
  String? Function(BuildContext, String?)? suffixFieldControllerValidator;
  // State field(s) for civil_status_dropdown widget.
  String? civilStatusDropdownValue;
  FormFieldController<String>? civilStatusDropdownValueController;
  // State field(s) for sex_radio_button widget.
  FormFieldController<String>? sexRadioButtonValueController;
  // State field(s) for phone_number_field widget.
  FocusNode? phoneNumberFieldFocusNode;
  TextEditingController? phoneNumberFieldController;
  String? Function(BuildContext, String?)? phoneNumberFieldControllerValidator;
  String? _phoneNumberFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for citizenship_field widget.
  FocusNode? citizenshipFieldFocusNode;
  TextEditingController? citizenshipFieldController;
  String? Function(BuildContext, String?)? citizenshipFieldControllerValidator;
  String? _citizenshipFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for religion_field widget.
  FocusNode? religionFieldFocusNode;
  TextEditingController? religionFieldController;
  String? Function(BuildContext, String?)? religionFieldControllerValidator;
  String? _religionFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for number_address_field widget.
  FocusNode? numberAddressFieldFocusNode;
  TextEditingController? numberAddressFieldController;
  String? Function(BuildContext, String?)?
      numberAddressFieldControllerValidator;
  String? _numberAddressFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for street_address_field widget.
  FocusNode? streetAddressFieldFocusNode;
  TextEditingController? streetAddressFieldController;
  String? Function(BuildContext, String?)?
      streetAddressFieldControllerValidator;
  String? _streetAddressFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for barangay_address_field widget.
  FocusNode? barangayAddressFieldFocusNode;
  TextEditingController? barangayAddressFieldController;
  String? Function(BuildContext, String?)?
      barangayAddressFieldControllerValidator;
  String? _barangayAddressFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for city_address_field widget.
  FocusNode? cityAddressFieldFocusNode;
  TextEditingController? cityAddressFieldController;
  String? Function(BuildContext, String?)? cityAddressFieldControllerValidator;
  String? _cityAddressFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for province_address_field widget.
  FocusNode? provinceAddressFieldFocusNode;
  TextEditingController? provinceAddressFieldController;
  String? Function(BuildContext, String?)?
      provinceAddressFieldControllerValidator;
  String? _provinceAddressFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    firstNameFieldControllerValidator = _firstNameFieldControllerValidator;
    middleNameFieldControllerValidator = _middleNameFieldControllerValidator;
    lastNameFieldControllerValidator = _lastNameFieldControllerValidator;
    phoneNumberFieldControllerValidator = _phoneNumberFieldControllerValidator;
    citizenshipFieldControllerValidator = _citizenshipFieldControllerValidator;
    religionFieldControllerValidator = _religionFieldControllerValidator;
    numberAddressFieldControllerValidator =
        _numberAddressFieldControllerValidator;
    streetAddressFieldControllerValidator =
        _streetAddressFieldControllerValidator;
    barangayAddressFieldControllerValidator =
        _barangayAddressFieldControllerValidator;
    cityAddressFieldControllerValidator = _cityAddressFieldControllerValidator;
    provinceAddressFieldControllerValidator =
        _provinceAddressFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFieldFocusNode?.dispose();
    firstNameFieldController?.dispose();

    middleNameFieldFocusNode?.dispose();
    middleNameFieldController?.dispose();

    lastNameFieldFocusNode?.dispose();
    lastNameFieldController?.dispose();

    suffixFieldFocusNode?.dispose();
    suffixFieldController?.dispose();

    phoneNumberFieldFocusNode?.dispose();
    phoneNumberFieldController?.dispose();

    citizenshipFieldFocusNode?.dispose();
    citizenshipFieldController?.dispose();

    religionFieldFocusNode?.dispose();
    religionFieldController?.dispose();

    numberAddressFieldFocusNode?.dispose();
    numberAddressFieldController?.dispose();

    streetAddressFieldFocusNode?.dispose();
    streetAddressFieldController?.dispose();

    barangayAddressFieldFocusNode?.dispose();
    barangayAddressFieldController?.dispose();

    cityAddressFieldFocusNode?.dispose();
    cityAddressFieldController?.dispose();

    provinceAddressFieldFocusNode?.dispose();
    provinceAddressFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get sexRadioButtonValue => sexRadioButtonValueController?.value;
}
