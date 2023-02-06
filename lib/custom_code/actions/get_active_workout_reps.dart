// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
// import '../../backend/schema/structs/repetition_struct.dart';

Future<List<RepetitionStruct>> getActiveWorkoutReps(
    DocumentReference workoutRef) async {
  // Add your function code here!
  return new List<RepetitionStruct>.filled(
      1, createRepetitionStruct(weight: 123.0));
  // final user = await FirebaseAuth.instance.currentUser;
  // if (user != null) {
  //   final workoutsSnapshot = await FirebaseFirestore.instance
  //       .collection('user')
  //       .doc('${user.uid}')
  //       .collection('workouts')
  //       .doc('${workoutRef.id}')
  //       .get();

  //   final reps = workoutsSnapshot
  //       .data()?['repetitions']
  //       .map((rep) => createRepetitionStruct(weight: rep.data()['weight']))
  //       .toList();

  //   print(reps);

  //   return reps;
  // } else {
  //   return List<RepetitionStruct>.empty();
  //   // return null;
  // }
}
