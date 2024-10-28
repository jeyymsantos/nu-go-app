import '/backend/backend.dart';
import '/components/feedback_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/users/rsco/event_management/event_profile/components/side_bar_event_profile/side_bar_event_profile_widget.dart';
import 'event_profile_insights_widget.dart' show EventProfileInsightsWidget;
import 'package:flutter/material.dart';

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
