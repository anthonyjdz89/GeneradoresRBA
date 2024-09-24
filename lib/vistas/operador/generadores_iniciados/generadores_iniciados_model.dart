import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/timer_generador_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'generadores_iniciados_widget.dart' show GeneradoresIniciadosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GeneradoresIniciadosModel
    extends FlutterFlowModel<GeneradoresIniciadosWidget> {
  ///  Local state fields for this page.

  double? horasEnUso;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
