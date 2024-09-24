import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_evento_widget.dart' show EditarEventoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarEventoModel extends FlutterFlowModel<EditarEventoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for facturaID widget.
  FocusNode? facturaIDFocusNode;
  TextEditingController? facturaIDTextController;
  String? Function(BuildContext, String?)? facturaIDTextControllerValidator;
  // State field(s) for Cliente widget.
  String? clienteValue;
  FormFieldController<String>? clienteValueController;
  // State field(s) for FechaMontaje widget.
  FocusNode? fechaMontajeFocusNode;
  TextEditingController? fechaMontajeTextController;
  String? Function(BuildContext, String?)? fechaMontajeTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for HoraMontaje widget.
  FocusNode? horaMontajeFocusNode;
  TextEditingController? horaMontajeTextController;
  String? Function(BuildContext, String?)? horaMontajeTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for FechaEvento widget.
  FocusNode? fechaEventoFocusNode;
  TextEditingController? fechaEventoTextController;
  String? Function(BuildContext, String?)? fechaEventoTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for HoraEvento widget.
  FocusNode? horaEventoFocusNode;
  TextEditingController? horaEventoTextController;
  String? Function(BuildContext, String?)? horaEventoTextControllerValidator;
  DateTime? datePicked4;
  // State field(s) for lugarEvento widget.
  FocusNode? lugarEventoFocusNode;
  TextEditingController? lugarEventoTextController;
  String? Function(BuildContext, String?)? lugarEventoTextControllerValidator;
  // State field(s) for generadores widget.
  List<String>? generadoresValue;
  FormFieldController<List<String>>? generadoresValueController;
  // State field(s) for operador widget.
  String? operadorValue;
  FormFieldController<String>? operadorValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    facturaIDFocusNode?.dispose();
    facturaIDTextController?.dispose();

    fechaMontajeFocusNode?.dispose();
    fechaMontajeTextController?.dispose();

    horaMontajeFocusNode?.dispose();
    horaMontajeTextController?.dispose();

    fechaEventoFocusNode?.dispose();
    fechaEventoTextController?.dispose();

    horaEventoFocusNode?.dispose();
    horaEventoTextController?.dispose();

    lugarEventoFocusNode?.dispose();
    lugarEventoTextController?.dispose();
  }
}
