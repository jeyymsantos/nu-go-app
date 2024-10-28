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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<ReportEventThenCountStruct>> getTopEventAttendees() async {
  // Add your function code here!

  try {
    // Reference to Firestore
    final firestore = FirebaseFirestore.instance;

    // Map to store participant count per event
    final Map<DocumentReference, int> participantCounts = {};

    // Query to get all approved events
    final eventsQuerySnapshot = await firestore
        .collection('events')
        .where('status', isEqualTo: 'Approved')
        .get();

    // Iterate through each approved event to count the approved attendees
    for (var eventDoc in eventsQuerySnapshot.docs) {
      final eventRef = eventDoc.reference;

      // Query the event_attendees sub-collection for approved attendees
      final attendeesQuerySnapshot = await eventRef
          .collection('event_attendees')
          .where('ticket_status', isEqualTo: 'Approved')
          .get();

      // Store the count of approved attendees for each event
      participantCounts[eventRef] = attendeesQuerySnapshot.docs.length;
    }

    // Convert participantCounts map to a list of ReportEventThenCountStruct
    final List<ReportEventThenCountStruct> eventParticipantList =
        participantCounts.entries
            .map((entry) => ReportEventThenCountStruct(
                  eventRef: entry.key,
                  count: entry.value,
                ))
            .toList();

    // Sort the list by participant count in descending order and take the top 5
    eventParticipantList.sort((a, b) => b.count.compareTo(a.count));
    final top5EventsWithMostParticipants =
        eventParticipantList.take(5).toList();

    return top5EventsWithMostParticipants;
  } catch (e) {
    print("Error getting top 5 events with most participants: $e");
    return [];
  }
}
