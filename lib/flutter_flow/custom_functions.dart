import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int programTimeRepeater(List<int>? programTimeCountList) {
  return (programTimeCountList!.last + 1);
}

DateTime validateEventStartDate() {
  // Get the current date and time
  DateTime now = DateTime.now();

  // Add 5 days to the current date
  DateTime minimumDate = now.add(Duration(days: 3));

  // Return the minimum date
  return minimumDate;
}

List<CalendarDayStruct> getCalendarForMonth(DateTime inputDate) {
  List<CalendarDayStruct> calendarDays = [];

// Get the first day of the month
  DateTime firstOfMonth = DateTime(inputDate.year, inputDate.month, 1);

// Find the previous Monday
  int daysToPreviousMonday = (firstOfMonth.weekday - DateTime.monday) % 7;
  DateTime startCalendarDay =
      firstOfMonth.subtract(Duration(days: daysToPreviousMonday));

// Generate calendar days for 5 weeks (35 days)
  for (int i = 0; i < 35; i++) {
    DateTime currentDay = startCalendarDay.add(Duration(days: i));
    bool isPreviousMonth = currentDay.month < firstOfMonth.month ||
        (currentDay.month > firstOfMonth.month && firstOfMonth.month == 12);
    bool isNextMonth = currentDay.month > firstOfMonth.month ||
        (currentDay.month < firstOfMonth.month && firstOfMonth.month == 1);

    calendarDays.add(CalendarDayStruct(
        calendarDate: currentDay,
        isPreviousMonth: isPreviousMonth,
        isNextMonth: isNextMonth));
  }
  return calendarDays;
}

double calculateBudgetChargedTo(
  List<BudgetListStruct> budgetList,
  String chargedTo,
) {
  double total = 0.0;

  for (var item in budgetList) {
    if (item.chargedTo == chargedTo) {
      total += item.amount;
    }
  }

  return total;
}

String capitalization(String input) {
  input = input.toUpperCase();
  return input;
}

int getUserIndex(
  List<DocumentReference> usersList,
  DocumentReference userDoc,
) {
  // Loop through the list to find the document reference
  for (int i = 0; i < usersList.length; i++) {
    if (usersList[i] == userDoc) {
      return i; // Return the index where the document was found
    }
  }
  // Return -1 if the document was not found
  return -1;
}

int decrementByOne(int listTotal) {
  return listTotal - 1;
}

String checkEventStatus(
  DateTime eventStart,
  DateTime eventEnd,
  DateTime currentDateTime,
) {
// Check if the current datetime is before the event start
  if (currentDateTime.isBefore(eventStart)) {
    return "before";
  }
  // Check if the current datetime is after the event end
  else if (currentDateTime.isAfter(eventEnd)) {
    return "concluded";
  }
  // If neither, it means the current datetime is within the event start and end
  else {
    return "on-going";
  }
}

double convertToDouble(String number) {
  return double.parse(number);
}
