import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'timer_generador_widget.dart' show TimerGeneradorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class TimerGeneradorModel extends FlutterFlowModel<TimerGeneradorWidget> {
  ///  State fields for stateful widgets in this component.

  InstantTimer? PeriodicTimer;
  // Stores action output result for [Custom Action - calculeTime] action in TimerGenerador widget.
  String? actualTime;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    PeriodicTimer?.cancel();
  }
}
