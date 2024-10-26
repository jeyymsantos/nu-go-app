// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkRoomAvailability(
  DocumentReference selectedFacility,
  DateTime newEventStart,
  DateTime newEventEnd,
) async {
  // Add your function code here!

  // Query Firestore to check for existing approved events in the same facility
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance
      .collection('events')
      .where('status', isEqualTo: 'Approved')
      .where('facility',
          isEqualTo: selectedFacility) // Compare DocumentReference
      .get();

  // Iterate over the query results to check for overlapping times
  for (QueryDocumentSnapshot doc in querySnapshot.docs) {
    DateTime existingStart = (doc['start_date'] as Timestamp).toDate();
    DateTime existingEnd = (doc['end_time'] as Timestamp).toDate();

    // Check if there is an overlap between the new event and the existing event
    if (newEventStart.isBefore(existingEnd) &&
        newEventEnd.isAfter(existingStart)) {
      // Return false if there is an overlap, meaning the room is not available
      return false;
    }
  }

  // If no overlap is found, return true (room is available)
  return true;
}
