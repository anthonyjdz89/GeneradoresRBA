import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_tarea_widget.dart' show EditarTareaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarTareaModel extends FlutterFlowModel<EditarTareaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for titulo-tarea widget.
  FocusNode? tituloTareaFocusNode;
  TextEditingController? tituloTareaTextController;
  String? Function(BuildContext, String?)? tituloTareaTextControllerValidator;
  // State field(s) for descripcion-tarea widget.
  FocusNode? descripcionTareaFocusNode;
  TextEditingController? descripcionTareaTextController;
  String? Function(BuildContext, String?)?
      descripcionTareaTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for tipo widget.
  String? tipoValue;
  FormFieldController<String>? tipoValueController;
  // State field(s) for estado widget.
  String? estadoValue;
  FormFieldController<String>? estadoValueController;
  // State field(s) for generadores widget.
  String? generadoresValue;
  FormFieldController<String>? generadoresValueController;
  // State field(s) for operador widget.
  String? operadorValue;
  FormFieldController<String>? operadorValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloTareaFocusNode?.dispose();
    tituloTareaTextController?.dispose();

    descripcionTareaFocusNode?.dispose();
    descripcionTareaTextController?.dispose();
  }
}
