import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int showRegistration(bool register) {
  if (register) {
    return 1;
  } else {
    return 0;
  }
}

int getTotalWeightLifted(List<DocumentReference>? workouts) {
  int reps = 0;
  workouts?.forEach((w) async {
    final doc =
        await FirebaseFirestore.instance.collection('Workouts').doc(w.id).get();
    print(doc.data()?['name']);
    if (doc.exists) {
      doc.data()?['exercise']?.forEach((e) {
        e.data()['sets'].forEach((s) => s.data()['reps'].forEach((x) {
              reps += (s.data()['weight'] as num).toInt() * x.data()['count']
                  as int;
            }));
      });
    }
  });
  return reps;
}

int getRepTotalWeight(
  int weight,
  int count,
) {
  return weight * count;
}

int addTotalRepWeightToCurrentWorkout(
  int totalLiftedInRep,
  int totalLiftedInWorkout,
) {
  return totalLiftedInRep + totalLiftedInWorkout;
}

DateTime getBeginningOfTheWeek(DateTime date) {
  return DateTime.utc(date.year, date.month, date.day - (date.weekday - 1));
}
