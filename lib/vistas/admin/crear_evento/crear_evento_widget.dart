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
import 'crear_evento_model.dart';
export 'crear_evento_model.dart';

class CrearEventoWidget extends StatefulWidget {
  const CrearEventoWidget({super.key});

  @override
  State<CrearEventoWidget> createState() => _CrearEventoWidgetState();
}

class _CrearEventoWidgetState extends State<CrearEventoWidget> {
  late CrearEventoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrearEventoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'crear-evento'});
    _model.nombreEventoTextController ??= TextEditingController();
    _model.nombreEventoFocusNode ??= FocusNode();

    _model.facturaIDTextController ??= TextEditingController();
    _model.facturaIDFocusNode ??= FocusNode();

    _model.lugarEventoTextController ??= TextEditingController();
    _model.lugarEventoFocusNode ??= FocusNode();

    _model.diasEventoTextController ??= TextEditingController();
    _model.diasEventoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<GeneradoresRecord>>(
      stream: queryGeneradoresRecord(
        queryBuilder: (generadoresRecord) => generadoresRecord.where(
          'estado',
          isEqualTo: true,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFoldingCube(
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<GeneradoresRecord> crearEventoGeneradoresRecordList =
            snapshot.data!;

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
                  logFirebaseEvent('CREAR_EVENTO_arrow_back_rounded_ICN_ON_T');
                  context.pop();
                },
              ),
              actions: [
                Padding(
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
                      logFirebaseEvent('CREAR_EVENTO_home_rounded_ICN_ON_TAP');

                      context.pushNamed('home-admin');
                    },
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Nuevo Servicio',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'RBA Logistic Services',
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
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
                        controller: _model.nombreEventoTextController,
                        focusNode: _model.nombreEventoFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Ingrese el nombre del Servicio',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
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
                              color: FlutterFlowTheme.of(context).accent1,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'RBA Logistic Services',
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        textAlign: TextAlign.center,
                        validator: _model.nombreEventoTextControllerValidator
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
                          List<ClienteRecord> clienteIDClienteRecordList =
                              snapshot.data!;

                          return FlutterFlowDropDown<String>(
                            controller: _model.clienteIDValueController ??=
                                FormFieldController<String>(null),
                            options: clienteIDClienteRecordList
                                .map((e) => e.nombre)
                                .toList(),
                            onChanged: (val) =>
                                safeSetState(() => _model.clienteIDValue = val),
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'RBA Logistic Services',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            hintText: 'Selecciona el cliente',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 0.0,
                            borderColor: FlutterFlowTheme.of(context).secondary,
                            borderWidth: 2.0,
                            borderRadius: 24.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                90.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          );
                        },
                      ),
                      TextFormField(
                        controller: _model.facturaIDTextController,
                        focusNode: _model.facturaIDFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'ID de la factura',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
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
                              color: FlutterFlowTheme.of(context).accent1,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'RBA Logistic Services',
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        textAlign: TextAlign.center,
                        validator: _model.facturaIDTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.lugarEventoTextController,
                        focusNode: _model.lugarEventoFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Ingrese el lugar del evento',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
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
                              color: FlutterFlowTheme.of(context).accent1,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'RBA Logistic Services',
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        textAlign: TextAlign.center,
                        validator: _model.lugarEventoTextControllerValidator
                            .asValidator(context),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'CREAR_EVENTO_fechaInstalacion_ON_TAP');
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
                        text: valueOrDefault<String>(
                          dateTimeFormat(
                            "yMMMd",
                            _model.datePicked1,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          'Fecha de instalación',
                        ),
                        icon: Icon(
                          Icons.calendar_month,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'CREAR_EVENTO_PAGE_horaInstalacion_ON_TAP');

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
                        text: valueOrDefault<String>(
                          dateTimeFormat(
                            "Hm",
                            _model.datePicked2,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          'Hora de Instalación',
                        ),
                        icon: Icon(
                          Icons.access_time,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'RBA Logistic Services',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'CREAR_EVENTO_PAGE_fechaEvento_ON_TAP');
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
                          text: valueOrDefault<String>(
                            dateTimeFormat(
                              "yMMMd",
                              _model.datePicked3,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            'Fecha de evento',
                          ),
                          icon: Icon(
                            Icons.calendar_month,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'RBA Logistic Services',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.diasEventoTextController,
                        focusNode: _model.diasEventoFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Días de evento',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
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
                              color: FlutterFlowTheme.of(context).accent1,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'RBA Logistic Services',
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        validator: _model.diasEventoTextControllerValidator
                            .asValidator(context),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: StreamBuilder<List<GeneradoresRecord>>(
                          stream: queryGeneradoresRecord(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitFoldingCube(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<GeneradoresRecord>
                                generadoresGeneradoresRecordList =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              controller: _model.generadoresValueController ??=
                                  FormFieldController<String>(
                                _model.generadoresValue ??= '',
                              ),
                              options: List<String>.from(
                                  crearEventoGeneradoresRecordList
                                      .map((e) => e.codigoQR)
                                      .toList()),
                              optionLabels: generadoresGeneradoresRecordList
                                  .map((e) => e.codigoQR)
                                  .toList(),
                              onChanged: (val) => safeSetState(
                                  () => _model.generadoresValue = val),
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'RBA Logistic Services',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              searchTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'RBA Logistic Services',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'RBA Logistic Services',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              hintText: 'Asignar Generadores',
                              searchHintText: 'Buscar Generador',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).secondary,
                              borderWidth: 2.0,
                              borderRadius: 24.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  70.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: true,
                              isMultiSelect: false,
                            );
                          },
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.operadorValueController ??=
                            FormFieldController<String>(null),
                        options: [
                          'Agustin Miranda',
                          'Luis Martinez',
                          'Carlos Villareal',
                          'Rafael Castro'
                        ],
                        onChanged: (val) =>
                            safeSetState(() => _model.operadorValue = val),
                        height: 50.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'RBA Logistic Services',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        hintText: 'Operador a cargo',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).secondary,
                        borderWidth: 2.0,
                        borderRadius: 24.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            90.0, 4.0, 16.0, 4.0),
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
                                'CREAR_EVENTO_CREAR_SERVICIO_BTN_ON_TAP');

                            var eventosRecordReference =
                                EventosRecord.collection.doc();
                            await eventosRecordReference
                                .set(createEventosRecordData(
                              nombre: _model.nombreEventoTextController.text,
                              lugar: _model.lugarEventoTextController.text,
                              fechaEvento: _model.datePicked3,
                              fechaPrueba: _model.datePicked1,
                              horaPrueba: _model.datePicked2,
                              facturaID: _model.facturaIDTextController.text,
                              clienteID: _model.clienteIDValue,
                              cantDiasEvento: double.tryParse(
                                  _model.diasEventoTextController.text),
                              horaEvento: _model.datePicked3,
                              estado: false,
                              generadorID: _model.generadoresValue,
                            ));
                            _model.eventoCreado =
                                EventosRecord.getDocumentFromData(
                                    createEventosRecordData(
                                      nombre: _model
                                          .nombreEventoTextController.text,
                                      lugar:
                                          _model.lugarEventoTextController.text,
                                      fechaEvento: _model.datePicked3,
                                      fechaPrueba: _model.datePicked1,
                                      horaPrueba: _model.datePicked2,
                                      facturaID:
                                          _model.facturaIDTextController.text,
                                      clienteID: _model.clienteIDValue,
                                      cantDiasEvento: double.tryParse(
                                          _model.diasEventoTextController.text),
                                      horaEvento: _model.datePicked3,
                                      estado: false,
                                      generadorID: _model.generadoresValue,
                                    ),
                                    eventosRecordReference);

                            context.pushNamed('ver-eventos');

                            safeSetState(() {});
                          },
                          text: 'Crear Servicio',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 55.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
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
      },
    );
  }
}
