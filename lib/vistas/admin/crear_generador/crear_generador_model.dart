import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'crear_generador_widget.dart' show CrearGeneradorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearGeneradorModel extends FlutterFlowModel<CrearGeneradorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GeneradorID widget.
  FocusNode? generadorIDFocusNode;
  TextEditingController? generadorIDTextController;
  String? Function(BuildContext, String?)? generadorIDTextControllerValidator;
  // State field(s) for Descripcion widget.
  final descripcionKey = GlobalKey();
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? descripcionSelectedOption;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  // State field(s) for codigoQR widget.
  FocusNode? codigoQRFocusNode;
  TextEditingController? codigoQRTextController;
  String? Function(BuildContext, String?)? codigoQRTextControllerValidator;
  // State field(s) for Disponible widget.
  String? disponibleValue;
  FormFieldController<String>? disponibleValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for HorasDeUso widget.
  FocusNode? horasDeUsoFocusNode;
  TextEditingController? horasDeUsoTextController;
  String? Function(BuildContext, String?)? horasDeUsoTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for limpiezaRadiador widget.
  final limpiezaRadiadorKey = GlobalKey();
  FocusNode? limpiezaRadiadorFocusNode;
  TextEditingController? limpiezaRadiadorTextController;
  String? limpiezaRadiadorSelectedOption;
  String? Function(BuildContext, String?)?
      limpiezaRadiadorTextControllerValidator;
  // State field(s) for UltimoAceite widget.
  final ultimoAceiteKey = GlobalKey();
  FocusNode? ultimoAceiteFocusNode;
  TextEditingController? ultimoAceiteTextController;
  String? ultimoAceiteSelectedOption;
  String? Function(BuildContext, String?)? ultimoAceiteTextControllerValidator;
  // State field(s) for UltimoFiltroAire widget.
  final ultimoFiltroAireKey = GlobalKey();
  FocusNode? ultimoFiltroAireFocusNode;
  TextEditingController? ultimoFiltroAireTextController;
  String? ultimoFiltroAireSelectedOption;
  String? Function(BuildContext, String?)?
      ultimoFiltroAireTextControllerValidator;
  // State field(s) for UltimoFiltroCombustible widget.
  final ultimoFiltroCombustibleKey = GlobalKey();
  FocusNode? ultimoFiltroCombustibleFocusNode;
  TextEditingController? ultimoFiltroCombustibleTextController;
  String? ultimoFiltroCombustibleSelectedOption;
  String? Function(BuildContext, String?)?
      ultimoFiltroCombustibleTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    generadorIDFocusNode?.dispose();
    generadorIDTextController?.dispose();

    descripcionFocusNode?.dispose();

    codigoQRFocusNode?.dispose();
    codigoQRTextController?.dispose();

    horasDeUsoFocusNode?.dispose();
    horasDeUsoTextController?.dispose();

    limpiezaRadiadorFocusNode?.dispose();

    ultimoAceiteFocusNode?.dispose();

    ultimoFiltroAireFocusNode?.dispose();

    ultimoFiltroCombustibleFocusNode?.dispose();
  }
}
