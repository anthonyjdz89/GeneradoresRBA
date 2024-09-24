import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'crear_cliente_widget.dart' show CrearClienteWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearClienteModel extends FlutterFlowModel<CrearClienteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ClienteID widget.
  FocusNode? clienteIDFocusNode;
  TextEditingController? clienteIDTextController;
  String? Function(BuildContext, String?)? clienteIDTextControllerValidator;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for Documento widget.
  FocusNode? documentoFocusNode;
  TextEditingController? documentoTextController;
  String? Function(BuildContext, String?)? documentoTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    clienteIDFocusNode?.dispose();
    clienteIDTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    documentoFocusNode?.dispose();
    documentoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();
  }
}
