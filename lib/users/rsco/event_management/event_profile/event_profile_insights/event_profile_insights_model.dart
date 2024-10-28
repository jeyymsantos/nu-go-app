import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/feedback_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import 'dart:math';
import 'event_profile_insights_widget.dart' show EventProfileInsightsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EventProfileInsightsModel
    extends FlutterFlowModel<EventProfileInsightsWidget> {
  ///  Local state fields for this page.

  double totalRatings = 0.0;

  int? numberOfFeedback = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in event_profile_insights widget.
  List<EventAttendeesRecord>? allApprovedTickets;
  // Model for SideBar_eventProfile component.
  late SideBarEventProfileModel sideBarEventProfileModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Models for feedbackComponent dynamic component.
  late FlutterFlowDynamicModels<FeedbackComponentModel> feedbackComponentModels;

  @override
  void initState(BuildContext context) {
    sideBarEventProfileModel =
        createModel(context, () => SideBarEventProfileModel());
    feedbackComponentModels =
        FlutterFlowDynamicModels(() => FeedbackComponentModel());
  }

  @override
  void dispose() {
    sideBarEventProfileModel.dispose();
    feedbackComponentModels.dispose();
  }
}
