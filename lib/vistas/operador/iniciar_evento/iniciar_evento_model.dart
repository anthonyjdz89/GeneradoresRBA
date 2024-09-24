import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'iniciar_evento_widget.dart' show IniciarEventoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IniciarEventoModel extends FlutterFlowModel<IniciarEventoWidget> {
  ///  State fields for stateful widgets in this page.

  var codeQr = '';
  // Stores action output result for [Custom Action - fotoAgua] action in aguaCamara widget.
  String? errorAgua;
  // Stores action output result for [Custom Action - fotoAceite] action in aceiteCamara widget.
  String? errorAceite;
  // Stores action output result for [Custom Action - fotoAcpm] action in combustibleCamara widget.
  String? errorAcpm;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InicioEventoRecord? servicioOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
