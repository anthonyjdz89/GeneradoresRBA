import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future sync(BuildContext context) async {
  while (FFAppState().inicioEventoOffline.length != 0) {
    unawaited(
      () async {
        await InicioEventoRecord.createDoc(FFAppState().EventReference.first)
            .set(createInicioEventoRecordData(
          finalTime: FFAppState().inicioEventoOffline.first.finalTime,
          horasEnUso: FFAppState().inicioEventoOffline.first.horasEnUso,
          nivelAceite: FFAppState().inicioEventoOffline.first.nivelAceite,
          nivelAgua: FFAppState().inicioEventoOffline.first.nivelAgua,
          nivelCombustible:
              FFAppState().inicioEventoOffline.first.nivelCombustible,
          starTime: FFAppState().inicioEventoOffline.first.startTime,
          createTime: FFAppState().inicioEventoOffline.first.startTime,
          generadorID: FFAppState().inicioEventoOffline.first.generadorId,
          userId: FFAppState().inicioEventoOffline.first.userId,
          nameGenerator: FFAppState().inicioEventoOffline.first.nameGenerator,
          referenceEvento:
              FFAppState().inicioEventoOffline.first.eventReference,
        ));
      }(),
    );
    FFAppState()
        .removeFromInicioEventoOffline(FFAppState().inicioEventoOffline.first);
  }
}

Future checkAceite(BuildContext context) async {}
