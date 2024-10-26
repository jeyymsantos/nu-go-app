import '/components/widgets/rules_on_using_school_facilities/rules_on_using_school_facilities_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'event_proposal_step1_widget.dart' show EventProposalStep1Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EventProposalStep1Model
    extends FlutterFlowModel<EventProposalStep1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for online_or_inperson widget.
  FormFieldController<String>? onlineOrInpersonValueController;
  // State field(s) for campus_or_outside widget.
  FormFieldController<String>? campusOrOutsideValueController;
  // State field(s) for max_attendees widget.
  FocusNode? maxAttendeesFocusNode;
  TextEditingController? maxAttendeesTextController;
  String? Function(BuildContext, String?)? maxAttendeesTextControllerValidator;
  String? _maxAttendeesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Question #3 is required.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    maxAttendeesTextControllerValidator = _maxAttendeesTextControllerValidator;
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    maxAttendeesFocusNode?.dispose();
    maxAttendeesTextController?.dispose();
  }

  /// Additional helper methods.
  String? get onlineOrInpersonValue => onlineOrInpersonValueController?.value;
  String? get campusOrOutsideValue => campusOrOutsideValueController?.value;
}
