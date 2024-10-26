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

Future<RoomsRecord> getRoomsDocument(String documentID) async {
  // Add your function code here!

  final firestoreInstance = FirebaseFirestore.instance;

  final documentSnapshot =
      await firestoreInstance.collection('rooms').doc(documentID).get();

  final documentData = documentSnapshot.data()!;
  final reference = documentSnapshot.reference;

  final room = RoomsRecord.getDocumentFromData(documentData, reference);
  return room;
}
