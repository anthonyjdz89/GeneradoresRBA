// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> checkMaintenance() async {
  try {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('generadores').get();

    for (var doc in querySnapshot.docs) {
      final data = doc.data() as Map<String, dynamic>;
      final horasActuales = data['horas_actuales'] ?? 0;

      // Verificar mantenimiento de aceite, filtro de aceite y filtro de combustible
      if (horasActuales >= 150) {
        await crearTareaMantenimiento(
          data['generadorID'],
          'Cambio de aceite, filtro de aceite y filtro de combustible',
        );
      }

      // Verificar limpieza del radiador cada año
      final fechaUltimaLimpieza = data['limpieza_radiador'] ??
          0; // Asegúrate de que esto esté correctamente configurado
      final duracionUnAno = Duration(days: 365);
      if (DateTime.now()
              .difference(fechaUltimaLimpieza.toDate())
              .compareTo(duracionUnAno) >=
          0) {
        await crearTareaMantenimiento(
          data['generadorID'],
          'Limpieza del radiador',
        );
      }

      // Verificar otros parámetros de mantenimiento según sea necesario
      // Ejemplo:
      // final filtroAire = data['filtroAire'] ?? 0;
      // if (filtroAire >= 150) {
      //   await crearTareaMantenimiento(
      //     data['generadorID'],
      //     'Cambio de filtro de aire',
      //   );
      // }
    }
  } catch (e) {
    print('Error en checkMaintenance: $e');
    // Manejar el error según sea necesario (ej. registrar en Firebase Crashlytics, notificar al usuario, etc.)
  }
}

Future<void> crearTareaMantenimiento(
    String generadorID, String descripcion) async {
  final tareasSnapshot = await FirebaseFirestore.instance
      .collection('tareas')
      .where('generadorID', isEqualTo: generadorID)
      .where('estado', isEqualTo: 'pendiente')
      .get();

  if (tareasSnapshot.docs.isEmpty) {
    await FirebaseFirestore.instance.collection('tareas').add({
      'descripcion': descripcion,
      'estado': 'pendiente',
      'fechaAsignacion': FieldValue.serverTimestamp(),
      'fechaFinalizacion': null,
      'generadorID': generadorID,
      'name': 'Mantenimiento preventivo',
      'tipo': 'Tipo1'
    });
  }
}
