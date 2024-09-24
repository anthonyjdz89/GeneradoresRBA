// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> calculeTime(DateTime? startTime) async {
  // calcule time in format hh.mm.ss
  if (startTime == null) {
    return null;
  }

  final now = DateTime.now();
  final difference = now.difference(startTime);

  final hours = difference.inHours.toString().padLeft(2, '0');
  final minutes = (difference.inMinutes % 60).toString().padLeft(2, '0');
  final seconds = (difference.inSeconds % 60).toString().padLeft(2, '0');

  return '$hours:$minutes:$seconds';
}
