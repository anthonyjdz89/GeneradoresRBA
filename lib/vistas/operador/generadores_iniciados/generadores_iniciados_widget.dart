import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/timer_generador_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'generadores_iniciados_model.dart';
export 'generadores_iniciados_model.dart';

class GeneradoresIniciadosWidget extends StatefulWidget {
  const GeneradoresIniciadosWidget({super.key});

  @override
  State<GeneradoresIniciadosWidget> createState() =>
      _GeneradoresIniciadosWidgetState();
}

class _GeneradoresIniciadosWidgetState
    extends State<GeneradoresIniciadosWidget> {
  late GeneradoresIniciadosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneradoresIniciadosModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'generadoresIniciados'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent2,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderWidth: 1.0,
              buttonSize: 48.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () async {
                logFirebaseEvent('GENERADORES_INICIADOS_arrow_back_rounded');
                context.pop();
              },
            ),
          ),
          title: Text(
            'Generadores en uso',
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
                    logFirebaseEvent(
                        'GENERADORES_INICIADOS_home_rounded_ICN_O');

                    context.pushNamed('home-operador');
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
          child: StreamBuilder<List<InicioEventoRecord>>(
            stream: queryInicioEventoRecord(
              queryBuilder: (inicioEventoRecord) => inicioEventoRecord.where(
                'HorasEnUso',
                isNotEqualTo: null,
              ),
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
              List<InicioEventoRecord> listViewInicioEventoRecordList =
                  snapshot.data!;

              return ListView.separated(
                padding: EdgeInsets.fromLTRB(
                  0,
                  16.0,
                  0,
                  116.0,
                ),
                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: listViewInicioEventoRecordList.length,
                separatorBuilder: (_, __) => SizedBox(height: 16.0),
                itemBuilder: (context, listViewIndex) {
                  final listViewInicioEventoRecord =
                      listViewInicioEventoRecordList[listViewIndex];
                  return StreamBuilder<List<GeneradoresRecord>>(
                    stream: queryGeneradoresRecord(
                      queryBuilder: (generadoresRecord) =>
                          generadoresRecord.where(
                        'codigoQR',
                        isEqualTo: listViewInicioEventoRecord.generadorID,
                      ),
                      singleRecord: true,
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
                      List<GeneradoresRecord> containerGeneradoresRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerGeneradoresRecord =
                          containerGeneradoresRecordList.isNotEmpty
                              ? containerGeneradoresRecordList.first
                              : null;

                      return Material(
                        color: Colors.transparent,
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              listViewInicioEventoRecord
                                                  .nameGenerator,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            'RBA Logistic Services',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'GENERADORES_INICIADOS_Icon_g7bh8dfa_ON_T');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          TimerGeneradorWidget(
                                                        parameter1:
                                                            containerGeneradoresRecord!
                                                                .codigoQR,
                                                        startTime:
                                                            listViewInicioEventoRecord
                                                                .starTime!,
                                                        eventStartId:
                                                            listViewInicioEventoRecord
                                                                .reference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.timer,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              size: 36.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Hora de inicio:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'RBA Logistic Services',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Text(
                                            dateTimeFormat(
                                              "jm",
                                              listViewInicioEventoRecord
                                                  .starTime!,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'RBA Logistic Services',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Hora de final:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'RBA Logistic Services',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          if (listViewInicioEventoRecord
                                              .hasFinalTime())
                                            Text(
                                              dateTimeFormat(
                                                "jm",
                                                listViewInicioEventoRecord
                                                    .finalTime!,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'RBA Logistic Services',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'GENERADORES_INICIADOS_DETENER_BTN_ON_TAP');
                                                                // Horas en Uso
                                                                _model.horasEnUso =
                                                                    functions.calcularHorasdeuso(
                                                                        listViewInicioEventoRecord
                                                                            .starTime,
                                                                        getCurrentTimestamp);
                                                                // Tiempo Final
                                                                unawaited(
                                                                  () async {
                                                                    await listViewInicioEventoRecord
                                                                        .reference
                                                                        .update(
                                                                            createInicioEventoRecordData(
                                                                      finalTime:
                                                                          getCurrentTimestamp,
                                                                    ));
                                                                  }(),
                                                                );

                                                                await listViewInicioEventoRecord
                                                                    .reference
                                                                    .update(
                                                                        createInicioEventoRecordData(
                                                                  horasEnUso: _model
                                                                      .horasEnUso,
                                                                ));
                                                                // Horas En generadores

                                                                await containerGeneradoresRecord!
                                                                    .reference
                                                                    .update(
                                                                        createGeneradoresRecordData(
                                                                  horasActuales: functions.sumaHoraActual(
                                                                      containerGeneradoresRecord!
                                                                          .horasActuales,
                                                                      listViewInicioEventoRecord
                                                                          .horasEnUso),
                                                                  aceiteMotor: functions.sumaHoraActual(
                                                                      containerGeneradoresRecord!
                                                                          .aceiteMotor,
                                                                      listViewInicioEventoRecord
                                                                          .horasEnUso),
                                                                  filtroAire: functions.sumaHoraActual(
                                                                      containerGeneradoresRecord!
                                                                          .filtroAire,
                                                                      listViewInicioEventoRecord
                                                                          .horasEnUso),
                                                                  filtroCombustible: functions.sumaHoraActual(
                                                                      containerGeneradoresRecord!
                                                                          .filtroCombustible,
                                                                      listViewInicioEventoRecord
                                                                          .horasEnUso),
                                                                  limpiezaRadiador: functions.sumaHoraActual(
                                                                      containerGeneradoresRecord!
                                                                          .limpiezaRadiador,
                                                                      listViewInicioEventoRecord
                                                                          .horasEnUso),
                                                                ));
                                                                var confirmDialogResponse =
                                                                    await showDialog<
                                                                            bool>(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: Text('Console'),
                                                                              content: Text('generador detenido con exitohoras en uso${_model.horasEnUso?.toString()}'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                  child: Text('Cancel'),
                                                                                ),
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                  child: Text('Confirm'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ) ??
                                                                        false;

                                                                context.pushNamed(
                                                                    'generadoresIniciados');
                                                              },
                                                              text: 'Detener',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 100.0,
                                                                height: 50.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent1,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'RBA Logistic Services',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            38.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 8.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 2.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
