import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

double? calcularHorasdeuso(
  DateTime? horainicio,
  DateTime? horaFinal,
) {
  if (horainicio == null || horaFinal == null) {
    return null;
  }

  Duration difference = horaFinal.difference(horainicio);

// Convertir la diferencia total en minutos
  double minutosTotales = difference.inMinutes.toDouble();

  // Calcular la cantidad de horas y minutos
  int horas = (minutosTotales / 60).floor();
  int minutos = (minutosTotales % 60).floor();

  // Combinar las horas y minutos en un valor decimal
  double horasPasadas = horas + (minutos / 100);

  return horasPasadas;
}

DocumentReference buscarGenerador(String iDGenerador) {
  // busca en la propiedad de un documento de la coleccion generadores

  return FirebaseFirestore.instance.collection('generadores').doc(iDGenerador);
}

double? sumaHoraActual(
  double horaActual,
  double horaUso,
) {
  // sumar la hora actual con la hora en uso
  final suma = horaActual + horaUso;
  return suma;
}

String? converterBase64PNG(String? imageBase64) {
  if (imageBase64 == null) {
    return null;
  }
  return 'data:image/png;base64,' + imageBase64;
}
