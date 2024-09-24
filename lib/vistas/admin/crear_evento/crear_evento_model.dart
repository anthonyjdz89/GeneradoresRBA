import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_evento_widget.dart' show CrearEventoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearEventoModel extends FlutterFlowModel<CrearEventoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombreEvento widget.
  FocusNode? nombreEventoFocusNode;
  TextEditingController? nombreEventoTextController;
  String? Function(BuildContext, String?)? nombreEventoTextControllerValidator;
  // State field(s) for ClienteID widget.
  String? clienteIDValue;
  FormFieldController<String>? clienteIDValueController;
  // State field(s) for facturaID widget.
  FocusNode? facturaIDFocusNode;
  TextEditingController? facturaIDTextController;
  String? Function(BuildContext, String?)? facturaIDTextControllerValidator;
  // State field(s) for lugarEvento widget.
  FocusNode? lugarEventoFocusNode;
  TextEditingController? lugarEventoTextController;
  String? Function(BuildContext, String?)? lugarEventoTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for diasEvento widget.
  FocusNode? diasEventoFocusNode;
  TextEditingController? diasEventoTextController;
  String? Function(BuildContext, String?)? diasEventoTextControllerValidator;
  // State field(s) for generadores widget.
  String? generadoresValue;
  FormFieldController<String>? generadoresValueController;
  // State field(s) for operador widget.
  String? operadorValue;
  FormFieldController<String>? operadorValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventosRecord? eventoCreado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreEventoFocusNode?.dispose();
    nombreEventoTextController?.dispose();

    facturaIDFocusNode?.dispose();
    facturaIDTextController?.dispose();

    lugarEventoFocusNode?.dispose();
    lugarEventoTextController?.dispose();

    diasEventoFocusNode?.dispose();
    diasEventoTextController?.dispose();
  }
}
