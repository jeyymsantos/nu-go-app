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

Future<List<ReportOrgThenCountStruct>> getTopOrgEvent() async {
  // Add your function code here!

  try {
    // Reference to Firestore
    final firestore = FirebaseFirestore.instance;

    // Map to store event count per organization
    final Map<DocumentReference, int> eventCounts = {};

    // Query the 'events' collection for approved events
    final querySnapshot = await firestore
        .collection('events')
        .where('status', isEqualTo: 'Approved')
        .get();

    // Count events for each organization
    for (var doc in querySnapshot.docs) {
      final orgReference = doc.data()['org_reference'] as DocumentReference?;
      if (orgReference != null) {
        eventCounts[orgReference] = (eventCounts[orgReference] ?? 0) + 1;
      }
    }

    // Convert eventCounts map to a list of ReportOrgTopEventsStruct
    final List<ReportOrgThenCountStruct> orgEventList = eventCounts.entries
        .map((entry) => ReportOrgThenCountStruct(
              orgRef: entry.key,
              count: entry.value,
            ))
        .toList();

    // Sort the list by event count in descending order and take the top 5
    orgEventList.sort((a, b) => b.count.compareTo(a.count));
    final top5OrgsWithMostEvents = orgEventList.take(5).toList();

    return top5OrgsWithMostEvents;
  } catch (e) {
    print("Error getting top 5 organizations with most events: $e");
    return [];
  }
}
