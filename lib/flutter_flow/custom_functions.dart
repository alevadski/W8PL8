import 'dart:convert';
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

String formatDuration(int duration) {
  // get HH:mm:ss string from duration in seconds
  final hours = (duration / 3600).truncate();
  duration = duration % 3600;
  final minutes = (duration / 60).truncate();
  final seconds = (duration % 60);

  return new Duration(hours: hours, minutes: minutes, seconds: seconds)
      .toString()
      .split(".")[0];
}
