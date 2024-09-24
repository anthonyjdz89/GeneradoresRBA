// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TareasStruct extends FFFirebaseStruct {
  TareasStruct({
    String? descripcion,
    Estado? estado,
    DateTime? fechaAsignacion,
    DateTime? fechaFinalizacion,
    Tipo? tipo,
    DocumentReference? generadorID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _descripcion = descripcion,
        _estado = estado,
        _fechaAsignacion = fechaAsignacion,
        _fechaFinalizacion = fechaFinalizacion,
        _tipo = tipo,
        _generadorID = generadorID,
        super(firestoreUtilData);

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "estado" field.
  Estado? _estado;
  Estado get estado => _estado ?? Estado.Pendiente;
  set estado(Estado? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "fechaAsignacion" field.
  DateTime? _fechaAsignacion;
  DateTime? get fechaAsignacion => _fechaAsignacion;
  set fechaAsignacion(DateTime? val) => _fechaAsignacion = val;

  bool hasFechaAsignacion() => _fechaAsignacion != null;

  // "fechaFinalizacion" field.
  DateTime? _fechaFinalizacion;
  DateTime get fechaFinalizacion =>
      _fechaFinalizacion ??
      DateTime.fromMicrosecondsSinceEpoch(1727067600000000);
  set fechaFinalizacion(DateTime? val) => _fechaFinalizacion = val;

  bool hasFechaFinalizacion() => _fechaFinalizacion != null;

  // "tipo" field.
  Tipo? _tipo;
  Tipo get tipo => _tipo ?? Tipo.sistema;
  set tipo(Tipo? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "generadorID" field.
  DocumentReference? _generadorID;
  DocumentReference? get generadorID => _generadorID;
  set generadorID(DocumentReference? val) => _generadorID = val;

  bool hasGeneradorID() => _generadorID != null;

  static TareasStruct fromMap(Map<String, dynamic> data) => TareasStruct(
        descripcion: data['descripcion'] as String?,
        estado: deserializeEnum<Estado>(data['estado']),
        fechaAsignacion: data['fechaAsignacion'] as DateTime?,
        fechaFinalizacion: data['fechaFinalizacion'] as DateTime?,
        tipo: deserializeEnum<Tipo>(data['tipo']),
        generadorID: data['generadorID'] as DocumentReference?,
      );

  static TareasStruct? maybeFromMap(dynamic data) =>
      data is Map ? TareasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'descripcion': _descripcion,
        'estado': _estado?.serialize(),
        'fechaAsignacion': _fechaAsignacion,
        'fechaFinalizacion': _fechaFinalizacion,
        'tipo': _tipo?.serialize(),
        'generadorID': _generadorID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.Enum,
        ),
        'fechaAsignacion': serializeParam(
          _fechaAsignacion,
          ParamType.DateTime,
        ),
        'fechaFinalizacion': serializeParam(
          _fechaFinalizacion,
          ParamType.DateTime,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.Enum,
        ),
        'generadorID': serializeParam(
          _generadorID,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static TareasStruct fromSerializableMap(Map<String, dynamic> data) =>
      TareasStruct(
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam<Estado>(
          data['estado'],
          ParamType.Enum,
          false,
        ),
        fechaAsignacion: deserializeParam(
          data['fechaAsignacion'],
          ParamType.DateTime,
          false,
        ),
        fechaFinalizacion: deserializeParam(
          data['fechaFinalizacion'],
          ParamType.DateTime,
          false,
        ),
        tipo: deserializeParam<Tipo>(
          data['tipo'],
          ParamType.Enum,
          false,
        ),
        generadorID: deserializeParam(
          data['generadorID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['generadores'],
        ),
      );

  @override
  String toString() => 'TareasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TareasStruct &&
        descripcion == other.descripcion &&
        estado == other.estado &&
        fechaAsignacion == other.fechaAsignacion &&
        fechaFinalizacion == other.fechaFinalizacion &&
        tipo == other.tipo &&
        generadorID == other.generadorID;
  }

  @override
  int get hashCode => const ListEquality().hash([
        descripcion,
        estado,
        fechaAsignacion,
        fechaFinalizacion,
        tipo,
        generadorID
      ]);
}

TareasStruct createTareasStruct({
  String? descripcion,
  Estado? estado,
  DateTime? fechaAsignacion,
  DateTime? fechaFinalizacion,
  Tipo? tipo,
  DocumentReference? generadorID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TareasStruct(
      descripcion: descripcion,
      estado: estado,
      fechaAsignacion: fechaAsignacion,
      fechaFinalizacion: fechaFinalizacion,
      tipo: tipo,
      generadorID: generadorID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TareasStruct? updateTareasStruct(
  TareasStruct? tareas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tareas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTareasStructData(
  Map<String, dynamic> firestoreData,
  TareasStruct? tareas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tareas == null) {
    return;
  }
  if (tareas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tareas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tareasData = getTareasFirestoreData(tareas, forFieldValue);
  final nestedData = tareasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tareas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTareasFirestoreData(
  TareasStruct? tareas, [
  bool forFieldValue = false,
]) {
  if (tareas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tareas.toMap());

  // Add any Firestore field values
  tareas.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTareasListFirestoreData(
  List<TareasStruct>? tareass,
) =>
    tareass?.map((e) => getTareasFirestoreData(e, true)).toList() ?? [];
