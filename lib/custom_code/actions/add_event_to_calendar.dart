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

import 'package:add_2_calendar/add_2_calendar.dart';

Future<String> addEventToCalendar(
  String title,
  String description,
  DateTime startDate,
  DateTime endDate,
  String location,
) async {
  // Add your function code here!

  try {
    final Event event = Event(
      title: title,
      description: description,
      startDate: startDate,
      endDate: endDate,
    );

    Add2Calendar.addEvent2Cal(event).then((success) {
      if (success) {
        return 'Event added successfully!';
      } else {
        return 'Failed to add event to calendar.';
      }
    });
  } catch (e) {
    print('Error adding event to calendar: $e');
    return 'An internal error has been encountered while saving event to calendar.';
  }

  return 'Adding to calendar failed.';
}
