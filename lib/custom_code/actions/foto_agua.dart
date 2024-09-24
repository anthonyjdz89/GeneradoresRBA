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

import 'package:image_picker/image_picker.dart';
import 'dart:convert';

final ImagePicker _picker = ImagePicker();

Future<String?> fotoAgua(BuildContext context) async {
  String? error1;

  try {
    final XFile? photoURL = await _picker.pickImage(
        source: ImageSource.camera,
        maxHeight: 512,
        maxWidth: 512,
        imageQuality: 100);

    if (photoURL != null) {
      var bytes = await photoURL.readAsBytes();
      FFAppState().base64lmageAgua = base64.encode(bytes);
    }
  } catch (e) {
    error1 = e.toString();
    print('error $error1');
  }
}
