// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialSincronizacionStruct extends FFFirebaseStruct {
  HistorialSincronizacionStruct({
    String? historialID,
    DocumentReference? operadorID,
    DateTime? fechaHoraSincronizacion,
    String? datosSincronizados,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _historialID = historialID,
        _operadorID = operadorID,
        _fechaHoraSincronizacion = fechaHoraSincronizacion,
        _datosSincronizados = datosSincronizados,
        super(firestoreUtilData);

  // "historialID" field.
  String? _historialID;
  String get historialID => _historialID ?? '';
  set historialID(String? val) => _historialID = val;

  bool hasHistorialID() => _historialID != null;

  // "operadorID" field.
  DocumentReference? _operadorID;
  DocumentReference? get operadorID => _operadorID;
  set operadorID(DocumentReference? val) => _operadorID = val;

  bool hasOperadorID() => _operadorID != null;

  // "fechaHoraSincronizacion" field.
  DateTime? _fechaHoraSincronizacion;
  DateTime? get fechaHoraSincronizacion => _fechaHoraSincronizacion;
  set fechaHoraSincronizacion(DateTime? val) => _fechaHoraSincronizacion = val;

  bool hasFechaHoraSincronizacion() => _fechaHoraSincronizacion != null;

  // "datosSincronizados" field.
  String? _datosSincronizados;
  String get datosSincronizados => _datosSincronizados ?? '';
  set datosSincronizados(String? val) => _datosSincronizados = val;

  bool hasDatosSincronizados() => _datosSincronizados != null;

  static HistorialSincronizacionStruct fromMap(Map<String, dynamic> data) =>
      HistorialSincronizacionStruct(
        historialID: data['historialID'] as String?,
        operadorID: data['operadorID'] as DocumentReference?,
        fechaHoraSincronizacion: data['fechaHoraSincronizacion'] as DateTime?,
        datosSincronizados: data['datosSincronizados'] as String?,
      );

  static HistorialSincronizacionStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? HistorialSincronizacionStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'historialID': _historialID,
        'operadorID': _operadorID,
        'fechaHoraSincronizacion': _fechaHoraSincronizacion,
        'datosSincronizados': _datosSincronizados,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'historialID': serializeParam(
          _historialID,
          ParamType.String,
        ),
        'operadorID': serializeParam(
          _operadorID,
          ParamType.DocumentReference,
        ),
        'fechaHoraSincronizacion': serializeParam(
          _fechaHoraSincronizacion,
          ParamType.DateTime,
        ),
        'datosSincronizados': serializeParam(
          _datosSincronizados,
          ParamType.String,
        ),
      }.withoutNulls;

  static HistorialSincronizacionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistorialSincronizacionStruct(
        historialID: deserializeParam(
          data['historialID'],
          ParamType.String,
          false,
        ),
        operadorID: deserializeParam(
          data['operadorID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['usuarios'],
        ),
        fechaHoraSincronizacion: deserializeParam(
          data['fechaHoraSincronizacion'],
          ParamType.DateTime,
          false,
        ),
        datosSincronizados: deserializeParam(
          data['datosSincronizados'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HistorialSincronizacionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistorialSincronizacionStruct &&
        historialID == other.historialID &&
        operadorID == other.operadorID &&
        fechaHoraSincronizacion == other.fechaHoraSincronizacion &&
        datosSincronizados == other.datosSincronizados;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [historialID, operadorID, fechaHoraSincronizacion, datosSincronizados]);
}

HistorialSincronizacionStruct createHistorialSincronizacionStruct({
  String? historialID,
  DocumentReference? operadorID,
  DateTime? fechaHoraSincronizacion,
  String? datosSincronizados,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HistorialSincronizacionStruct(
      historialID: historialID,
      operadorID: operadorID,
      fechaHoraSincronizacion: fechaHoraSincronizacion,
      datosSincronizados: datosSincronizados,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HistorialSincronizacionStruct? updateHistorialSincronizacionStruct(
  HistorialSincronizacionStruct? historialSincronizacion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    historialSincronizacion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHistorialSincronizacionStructData(
  Map<String, dynamic> firestoreData,
  HistorialSincronizacionStruct? historialSincronizacion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (historialSincronizacion == null) {
    return;
  }
  if (historialSincronizacion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      historialSincronizacion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final historialSincronizacionData = getHistorialSincronizacionFirestoreData(
      historialSincronizacion, forFieldValue);
  final nestedData =
      historialSincronizacionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      historialSincronizacion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHistorialSincronizacionFirestoreData(
  HistorialSincronizacionStruct? historialSincronizacion, [
  bool forFieldValue = false,
]) {
  if (historialSincronizacion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(historialSincronizacion.toMap());

  // Add any Firestore field values
  historialSincronizacion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHistorialSincronizacionListFirestoreData(
  List<HistorialSincronizacionStruct>? historialSincronizacions,
) =>
    historialSincronizacions
        ?.map((e) => getHistorialSincronizacionFirestoreData(e, true))
        .toList() ??
    [];
