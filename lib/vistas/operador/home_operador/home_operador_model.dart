import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:async';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'home_operador_widget.dart' show HomeOperadorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeOperadorModel extends FlutterFlowModel<HomeOperadorWidget> {
  ///  Local state fields for this page.

  List<GeneradoresRecord> genMantenimiento = [];
  void addToGenMantenimiento(GeneradoresRecord item) =>
      genMantenimiento.add(item);
  void removeFromGenMantenimiento(GeneradoresRecord item) =>
      genMantenimiento.remove(item);
  void removeAtIndexFromGenMantenimiento(int index) =>
      genMantenimiento.removeAt(index);
  void insertAtIndexInGenMantenimiento(int index, GeneradoresRecord item) =>
      genMantenimiento.insert(index, item);
  void updateGenMantenimientoAtIndex(
          int index, Function(GeneradoresRecord) updateFn) =>
      genMantenimiento[index] = updateFn(genMantenimiento[index]);

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkInternetConectivity] action in home-operador widget.
  bool? isConection;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
