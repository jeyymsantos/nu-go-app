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

Future<List<ReportEventThenCountStruct>> getTopEventRating() async {
  // Add your function code here!

  try {
    // Reference to Firestore
    final firestore = FirebaseFirestore.instance;

    // Map to store the average rating per event
    final Map<DocumentReference, double> eventAverageRatings = {};

    // Query to get all approved events
    final eventsQuerySnapshot = await firestore
        .collection('events')
        .where('status', isEqualTo: 'Approved')
        .get();

    // Iterate through each approved event to calculate the average feedback rating
    for (var eventDoc in eventsQuerySnapshot.docs) {
      final eventRef = eventDoc.reference;

      // Query the event_attendees sub-collection for ratings that are not zero
      final attendeesQuerySnapshot = await eventRef
          .collection('event_attendees')
          .where('ticket_feedback_rating', isGreaterThan: 0)
          .get();

      // Calculate the sum and count of valid feedback ratings
      int ratingCount = 0;
      double ratingSum = 0.0;

      for (var attendeeDoc in attendeesQuerySnapshot.docs) {
        final rating = attendeeDoc['ticket_feedback_rating'] ?? 0.0;

        if (rating > 0) {
          ratingSum += rating;
          ratingCount++;
        }
      }

      // Calculate the average rating if there are valid ratings
      if (ratingCount > 0) {
        double averageRating = ratingSum / ratingCount;
        eventAverageRatings[eventRef] = averageRating;
      }
    }

    // Convert eventAverageRatings map to a list of ReportEventThenCountStruct
    final List<ReportEventThenCountStruct> eventRatingList =
        eventAverageRatings.entries
            .map((entry) => ReportEventThenCountStruct(
                  eventRef: entry.key,
                  average: entry
                      .value, // Store the average rating in the Count field
                ))
            .toList();

    // Sort the list by average rating in descending order and take the top 5
    eventRatingList.sort((a, b) => b.average.compareTo(a.average));
    final top5EventsWithHighestFeedbackRating =
        eventRatingList.take(5).toList();

    return top5EventsWithHighestFeedbackRating;
  } catch (e) {
    print("Error getting top 5 events with highest feedback rating: $e");
    return [];
  }
}
