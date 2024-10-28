import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_profile_widget.dart' show EventProfileWidget;
import 'package:flutter/material.dart';

class EventProfileModel extends FlutterFlowModel<EventProfileWidget> {
  ///  Local state fields for this page.

  String address = 'Off-Campus';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in event_profile widget.
  EventsRecord? eventDoc;
  // Stores action output result for [Custom Action - getAddressFromLatLng] action in event_profile widget.
  String? givenAddress;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? attendeesCount;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
