import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'onboard_one_widget.dart' show OnboardOneWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardOneModel extends FlutterFlowModel<OnboardOneWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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

  @override
  void initState(BuildContext context) {
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
  }

  /// Additional helper methods.
  String? get sexRadioButtonValue => sexRadioButtonValueController?.value;
}
