import '/backend/backend.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'event_proposal_step2_inside_facility_widget.dart'
    show EventProposalStep2InsideFacilityWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventProposalStep2InsideFacilityModel
    extends FlutterFlowModel<EventProposalStep2InsideFacilityWidget> {
  ///  Local state fields for this page.

  RoomsRecord? roomDoc;

  bool isRoomAvailable = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // State field(s) for listOfFacilities widget.
  String? listOfFacilitiesValue;
  FormFieldController<String>? listOfFacilitiesValueController;
  // Stores action output result for [Custom Action - getRoomsDocument] action in listOfFacilities widget.
  RoomsRecord? roomContent;
  // Stores action output result for [Custom Action - checkRoomAvailability] action in listOfFacilities widget.
  bool? isRoomAvailableChecker;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }
}
