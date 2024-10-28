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

Future<List<ReportOrgThenCountStruct>> getTopOrgMembers() async {
  // Add your function code here!

  try {
    // Reference to the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Query to fetch only approved organizations
    QuerySnapshot orgSnapshot = await firestore
        .collection('organizations')
        .where('status', isEqualTo: 'Approved')
        .get();

    // List to store approved organizations with their references and member counts
    List<ReportOrgThenCountStruct> approvedOrgListWithCount = [];

    // Loop through each approved organization document
    for (var orgDoc in orgSnapshot.docs) {
      // Get the organization document reference
      DocumentReference orgRef = orgDoc.reference;

      // Count members in the sub-collection with status "Approved"
      QuerySnapshot memberSnapshot = await orgRef
          .collection('members')
          .where('status', isEqualTo: 'Approved')
          .get();

      // Create an instance of ReportOrgTopMembersStruct with the organization reference and member count
      ReportOrgThenCountStruct orgStruct = ReportOrgThenCountStruct(
        orgRef: orgRef,
        count: memberSnapshot.size,
      );

      // Add the struct to the list
      approvedOrgListWithCount.add(orgStruct);
    }

    // Sort the list by member count in descending order
    approvedOrgListWithCount.sort((a, b) => b.count.compareTo(a.count));

    // Return the top 5 organizations with the most approved members
    return approvedOrgListWithCount.take(5).toList();
  } catch (e) {
    print("Error fetching top organizations: $e");
    return [];
  }
}
