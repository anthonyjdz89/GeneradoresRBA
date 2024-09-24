import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editar_evento_model.dart';
export 'editar_evento_model.dart';

class EditarEventoWidget extends StatefulWidget {
  const EditarEventoWidget({
    super.key,
    required this.evento,
  });

  final EventosRecord? evento;

  @override
  State<EditarEventoWidget> createState() => _EditarEventoWidgetState();
}

class _EditarEventoWidgetState extends State<EditarEventoWidget> {
  late EditarEventoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarEventoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'editar-evento'});
    _model.nombreTextController ??=
        TextEditingController(text: widget!.evento?.nombre);
    _model.nombreFocusNode ??= FocusNode();

    _model.facturaIDTextController ??=
        TextEditingController(text: widget!.evento?.facturaID);
    _model.facturaIDFocusNode ??= FocusNode();

    _model.fechaMontajeTextController ??= TextEditingController();
    _model.fechaMontajeFocusNode ??= FocusNode();

    _model.horaMontajeTextController ??= TextEditingController();
    _model.horaMontajeFocusNode ??= FocusNode();

    _model.fechaEventoTextController ??= TextEditingController();
    _model.fechaEventoFocusNode ??= FocusNode();

    _model.horaEventoTextController ??= TextEditingController();
    _model.horaEventoFocusNode ??= FocusNode();

    _model.lugarEventoTextController ??=
        TextEditingController(text: widget!.evento?.lugar);
    _model.lugarEventoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.fechaMontajeTextController?.text = dateTimeFormat(
            "MMMEd",
            widget!.evento?.fechaPrueba,
            locale: FFLocalizations.of(context).languageCode,
          );
          _model.horaMontajeTextController?.text = dateTimeFormat(
            "yMMMd",
            widget!.evento?.horaPrueba,
            locale: FFLocalizations.of(context).languageCode,
          );
          _model.fechaEventoTextController?.text = dateTimeFormat(
            "MMMEd",
            widget!.evento?.fechaEvento,
            locale: FFLocalizations.of(context).languageCode,
          );
          _model.horaEventoTextController?.text = dateTimeFormat(
            "yMMMd",
            widget!.evento?.horaEvento,
            locale: FFLocalizations.of(context).languageCode,
          );
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent2,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderWidth: 1.0,
            buttonSize: 48.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
            onPressed: () async {
              logFirebaseEvent('EDITAR_EVENTO_arrow_back_rounded_ICN_ON_');
              context.pop();
            },
          ),
          title: Text(
            'Editar Evento',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'RBA Logistic Services',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).accent2,
                  borderWidth: 1.0,
                  buttonSize: 48.0,
                  fillColor: FlutterFlowTheme.of(context).accent2,
                  icon: Icon(
                    Icons.home_rounded,
                    color: FlutterFlowTheme.of(context).accent1,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('EDITAR_EVENTO_home_rounded_ICN_ON_TAP');

                    context.pushNamed('home-admin');
                  },
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  TextFormField(
                    controller: _model.nombreTextController,
                    focusNode: _model.nombreFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'ID de la factura',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    validator: _model.nombreTextControllerValidator
                        .asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.facturaIDTextController,
                    focusNode: _model.facturaIDFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'ID de la factura',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    validator: _model.facturaIDTextControllerValidator
                        .asValidator(context),
                  ),
                  StreamBuilder<List<ClienteRecord>>(
                    stream: queryClienteRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitFoldingCube(
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<ClienteRecord> clienteClienteRecordList =
                          snapshot.data!;

                      return FlutterFlowDropDown<String>(
                        controller: _model.clienteValueController ??=
                            FormFieldController<String>(
                          _model.clienteValue ??= widget!.evento?.clienteID,
                        ),
                        options: clienteClienteRecordList
                            .map((e) => e.nombre)
                            .toList(),
                        onChanged: (val) =>
                            safeSetState(() => _model.clienteValue = val),
                        height: 50.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'RBA Logistic Services',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        hintText: 'Selecciona un cliente',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0.0,
                        borderColor: FlutterFlowTheme.of(context).secondary,
                        borderWidth: 2.0,
                        borderRadius: 24.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                  TextFormField(
                    controller: _model.fechaMontajeTextController,
                    focusNode: _model.fechaMontajeFocusNode,
                    onFieldSubmitted: (_) async {
                      logFirebaseEvent(
                          'EDITAR_EVENTO_FechaMontaje_ON_TEXTFIELD_');
                      final _datePicked1Date = await showDatePicker(
                        context: context,
                        initialDate: getCurrentTimestamp,
                        firstDate: getCurrentTimestamp,
                        lastDate: DateTime(2050),
                      );

                      if (_datePicked1Date != null) {
                        safeSetState(() {
                          _model.datePicked1 = DateTime(
                            _datePicked1Date.year,
                            _datePicked1Date.month,
                            _datePicked1Date.day,
                          );
                        });
                      }
                    },
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Fecha del evento',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 22.0,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    validator: _model.fechaMontajeTextControllerValidator
                        .asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.horaMontajeTextController,
                    focusNode: _model.horaMontajeFocusNode,
                    onFieldSubmitted: (_) async {
                      logFirebaseEvent(
                          'EDITAR_EVENTO_HoraMontaje_ON_TEXTFIELD_S');

                      final _datePicked2Time = await showTimePicker(
                        context: context,
                        initialTime:
                            TimeOfDay.fromDateTime(getCurrentTimestamp),
                      );
                      if (_datePicked2Time != null) {
                        safeSetState(() {
                          _model.datePicked2 = DateTime(
                            getCurrentTimestamp.year,
                            getCurrentTimestamp.month,
                            getCurrentTimestamp.day,
                            _datePicked2Time.hour,
                            _datePicked2Time.minute,
                          );
                        });
                      }
                    },
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Ingrese la hora del evento',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      suffixIcon: Icon(
                        Icons.access_time_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 22.0,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    validator: _model.horaMontajeTextControllerValidator
                        .asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.fechaEventoTextController,
                    focusNode: _model.fechaEventoFocusNode,
                    onFieldSubmitted: (_) async {
                      logFirebaseEvent(
                          'EDITAR_EVENTO_FechaEvento_ON_TEXTFIELD_S');
                      final _datePicked3Date = await showDatePicker(
                        context: context,
                        initialDate: getCurrentTimestamp,
                        firstDate: getCurrentTimestamp,
                        lastDate: DateTime(2050),
                      );

                      if (_datePicked3Date != null) {
                        safeSetState(() {
                          _model.datePicked3 = DateTime(
                            _datePicked3Date.year,
                            _datePicked3Date.month,
                            _datePicked3Date.day,
                          );
                        });
                      }
                    },
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Fecha del evento',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 22.0,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    validator: _model.fechaEventoTextControllerValidator
                        .asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.horaEventoTextController,
                    focusNode: _model.horaEventoFocusNode,
                    onFieldSubmitted: (_) async {
                      logFirebaseEvent(
                          'EDITAR_EVENTO_HoraEvento_ON_TEXTFIELD_SU');

                      final _datePicked4Time = await showTimePicker(
                        context: context,
                        initialTime:
                            TimeOfDay.fromDateTime(getCurrentTimestamp),
                      );
                      if (_datePicked4Time != null) {
                        safeSetState(() {
                          _model.datePicked4 = DateTime(
                            getCurrentTimestamp.year,
                            getCurrentTimestamp.month,
                            getCurrentTimestamp.day,
                            _datePicked4Time.hour,
                            _datePicked4Time.minute,
                          );
                        });
                      }
                    },
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Ingrese la hora del evento',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      suffixIcon: Icon(
                        Icons.access_time_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 22.0,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    validator: _model.horaEventoTextControllerValidator
                        .asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.lugarEventoTextController,
                    focusNode: _model.lugarEventoFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Ingrese el lugar del evento',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    validator: _model.lugarEventoTextControllerValidator
                        .asValidator(context),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: StreamBuilder<List<GeneradoresRecord>>(
                      stream: queryGeneradoresRecord(
                        queryBuilder: (generadoresRecord) => generadoresRecord
                            .where(
                              'estado',
                              isEqualTo: false,
                            )
                            .orderBy('codigoQR'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitFoldingCube(
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        List<GeneradoresRecord>
                            generadoresGeneradoresRecordList = snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          multiSelectController:
                              _model.generadoresValueController ??=
                                  FormListFieldController<String>(null),
                          options: generadoresGeneradoresRecordList
                              .map((e) => e.codigoQR)
                              .toList(),
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'RBA Logistic Services',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'RBA Logistic Services',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                          hintText: 'Generadores',
                          searchHintText: 'Buscar Generador',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          borderWidth: 2.0,
                          borderRadius: 24.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              8.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: true,
                          isMultiSelect: true,
                          onMultiSelectChanged: (val) =>
                              safeSetState(() => _model.generadoresValue = val),
                        );
                      },
                    ),
                  ),
                  FlutterFlowDropDown<String>(
                    controller: _model.operadorValueController ??=
                        FormFieldController<String>(null),
                    options: ['Agustin Miranda', 'Luis Martinez'],
                    onChanged: (val) =>
                        safeSetState(() => _model.operadorValue = val),
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'RBA Logistic Services',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    hintText: 'Operador',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).secondary,
                    borderWidth: 2.0,
                    borderRadius: 24.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'EDITAR_EVENTO_EDITAR_EVENTO_BTN_ON_TAP');

                        await widget!.evento!.reference.update({
                          ...createEventosRecordData(
                            nombre: _model.nombreTextController.text,
                            lugar: _model.lugarEventoTextController.text,
                            fechaEvento: _model.datePicked3,
                            horaEvento: _model.datePicked2,
                            fechaPrueba: _model.datePicked3,
                            horaPrueba: _model.datePicked4,
                            facturaID: _model.facturaIDTextController.text,
                            clienteID: widget!.evento?.clienteID,
                          ),
                          ...mapToFirestore(
                            {
                              'generadoresID': FieldValue.arrayUnion(
                                  [widget!.evento?.generadoresID?.first]),
                            },
                          ),
                        });
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Evento Actualizado'),
                              content: Text(
                                  'la información del evento se ha actualizado!'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('volver'),
                                ),
                              ],
                            );
                          },
                        );

                        context.pushNamed('ver-eventos');
                      },
                      text: 'Editar Evento',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 55.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'RBA Logistic Services',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
