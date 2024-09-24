// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InicioEventoStruct extends FFFirebaseStruct {
  InicioEventoStruct({
    DateTime? finalTime,
    double? horasEnUso,
    String? nivelAceite,
    String? nivelAgua,
    String? nivelCombustible,
    DateTime? startTime,
    DateTime? createTime,
    String? generadorId,
    String? userId,
    String? nameGenerator,
    DocumentReference? eventReference,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _finalTime = finalTime,
        _horasEnUso = horasEnUso,
        _nivelAceite = nivelAceite,
        _nivelAgua = nivelAgua,
        _nivelCombustible = nivelCombustible,
        _startTime = startTime,
        _createTime = createTime,
        _generadorId = generadorId,
        _userId = userId,
        _nameGenerator = nameGenerator,
        _eventReference = eventReference,
        super(firestoreUtilData);

  // "FinalTime" field.
  DateTime? _finalTime;
  DateTime get finalTime =>
      _finalTime ?? DateTime.fromMicrosecondsSinceEpoch(1727154000000000);
  set finalTime(DateTime? val) => _finalTime = val;

  bool hasFinalTime() => _finalTime != null;

  // "HorasEnUso" field.
  double? _horasEnUso;
  double get horasEnUso => _horasEnUso ?? 0.0;
  set horasEnUso(double? val) => _horasEnUso = val;

  void incrementHorasEnUso(double amount) => horasEnUso = horasEnUso + amount;

  bool hasHorasEnUso() => _horasEnUso != null;

  // "NivelAceite" field.
  String? _nivelAceite;
  String get nivelAceite => _nivelAceite ?? '';
  set nivelAceite(String? val) => _nivelAceite = val;

  bool hasNivelAceite() => _nivelAceite != null;

  // "NivelAgua" field.
  String? _nivelAgua;
  String get nivelAgua => _nivelAgua ?? '';
  set nivelAgua(String? val) => _nivelAgua = val;

  bool hasNivelAgua() => _nivelAgua != null;

  // "NivelCombustible" field.
  String? _nivelCombustible;
  String get nivelCombustible => _nivelCombustible ?? '';
  set nivelCombustible(String? val) => _nivelCombustible = val;

  bool hasNivelCombustible() => _nivelCombustible != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime get startTime =>
      _startTime ?? DateTime.fromMicrosecondsSinceEpoch(1727067600000000);
  set startTime(DateTime? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime get createTime =>
      _createTime ?? DateTime.fromMicrosecondsSinceEpoch(1727067600000000);
  set createTime(DateTime? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "GeneradorId" field.
  String? _generadorId;
  String get generadorId => _generadorId ?? '';
  set generadorId(String? val) => _generadorId = val;

  bool hasGeneradorId() => _generadorId != null;

  // "UserId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "NameGenerator" field.
  String? _nameGenerator;
  String get nameGenerator => _nameGenerator ?? '';
  set nameGenerator(String? val) => _nameGenerator = val;

  bool hasNameGenerator() => _nameGenerator != null;

  // "eventReference" field.
  DocumentReference? _eventReference;
  DocumentReference? get eventReference => _eventReference;
  set eventReference(DocumentReference? val) => _eventReference = val;

  bool hasEventReference() => _eventReference != null;

  static InicioEventoStruct fromMap(Map<String, dynamic> data) =>
      InicioEventoStruct(
        finalTime: data['FinalTime'] as DateTime?,
        horasEnUso: castToType<double>(data['HorasEnUso']),
        nivelAceite: data['NivelAceite'] as String?,
        nivelAgua: data['NivelAgua'] as String?,
        nivelCombustible: data['NivelCombustible'] as String?,
        startTime: data['startTime'] as DateTime?,
        createTime: data['createTime'] as DateTime?,
        generadorId: data['GeneradorId'] as String?,
        userId: data['UserId'] as String?,
        nameGenerator: data['NameGenerator'] as String?,
        eventReference: data['eventReference'] as DocumentReference?,
      );

  static InicioEventoStruct? maybeFromMap(dynamic data) => data is Map
      ? InicioEventoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FinalTime': _finalTime,
        'HorasEnUso': _horasEnUso,
        'NivelAceite': _nivelAceite,
        'NivelAgua': _nivelAgua,
        'NivelCombustible': _nivelCombustible,
        'startTime': _startTime,
        'createTime': _createTime,
        'GeneradorId': _generadorId,
        'UserId': _userId,
        'NameGenerator': _nameGenerator,
        'eventReference': _eventReference,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FinalTime': serializeParam(
          _finalTime,
          ParamType.DateTime,
        ),
        'HorasEnUso': serializeParam(
          _horasEnUso,
          ParamType.double,
        ),
        'NivelAceite': serializeParam(
          _nivelAceite,
          ParamType.String,
        ),
        'NivelAgua': serializeParam(
          _nivelAgua,
          ParamType.String,
        ),
        'NivelCombustible': serializeParam(
          _nivelCombustible,
          ParamType.String,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'createTime': serializeParam(
          _createTime,
          ParamType.DateTime,
        ),
        'GeneradorId': serializeParam(
          _generadorId,
          ParamType.String,
        ),
        'UserId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'NameGenerator': serializeParam(
          _nameGenerator,
          ParamType.String,
        ),
        'eventReference': serializeParam(
          _eventReference,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static InicioEventoStruct fromSerializableMap(Map<String, dynamic> data) =>
      InicioEventoStruct(
        finalTime: deserializeParam(
          data['FinalTime'],
          ParamType.DateTime,
          false,
        ),
        horasEnUso: deserializeParam(
          data['HorasEnUso'],
          ParamType.double,
          false,
        ),
        nivelAceite: deserializeParam(
          data['NivelAceite'],
          ParamType.String,
          false,
        ),
        nivelAgua: deserializeParam(
          data['NivelAgua'],
          ParamType.String,
          false,
        ),
        nivelCombustible: deserializeParam(
          data['NivelCombustible'],
          ParamType.String,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        createTime: deserializeParam(
          data['createTime'],
          ParamType.DateTime,
          false,
        ),
        generadorId: deserializeParam(
          data['GeneradorId'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['UserId'],
          ParamType.String,
          false,
        ),
        nameGenerator: deserializeParam(
          data['NameGenerator'],
          ParamType.String,
          false,
        ),
        eventReference: deserializeParam(
          data['eventReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Eventos'],
        ),
      );

  @override
  String toString() => 'InicioEventoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InicioEventoStruct &&
        finalTime == other.finalTime &&
        horasEnUso == other.horasEnUso &&
        nivelAceite == other.nivelAceite &&
        nivelAgua == other.nivelAgua &&
        nivelCombustible == other.nivelCombustible &&
        startTime == other.startTime &&
        createTime == other.createTime &&
        generadorId == other.generadorId &&
        userId == other.userId &&
        nameGenerator == other.nameGenerator &&
        eventReference == other.eventReference;
  }

  @override
  int get hashCode => const ListEquality().hash([
        finalTime,
        horasEnUso,
        nivelAceite,
        nivelAgua,
        nivelCombustible,
        startTime,
        createTime,
        generadorId,
        userId,
        nameGenerator,
        eventReference
      ]);
}

InicioEventoStruct createInicioEventoStruct({
  DateTime? finalTime,
  double? horasEnUso,
  String? nivelAceite,
  String? nivelAgua,
  String? nivelCombustible,
  DateTime? startTime,
  DateTime? createTime,
  String? generadorId,
  String? userId,
  String? nameGenerator,
  DocumentReference? eventReference,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InicioEventoStruct(
      finalTime: finalTime,
      horasEnUso: horasEnUso,
      nivelAceite: nivelAceite,
      nivelAgua: nivelAgua,
      nivelCombustible: nivelCombustible,
      startTime: startTime,
      createTime: createTime,
      generadorId: generadorId,
      userId: userId,
      nameGenerator: nameGenerator,
      eventReference: eventReference,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InicioEventoStruct? updateInicioEventoStruct(
  InicioEventoStruct? inicioEvento, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    inicioEvento
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInicioEventoStructData(
  Map<String, dynamic> firestoreData,
  InicioEventoStruct? inicioEvento,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (inicioEvento == null) {
    return;
  }
  if (inicioEvento.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && inicioEvento.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final inicioEventoData =
      getInicioEventoFirestoreData(inicioEvento, forFieldValue);
  final nestedData =
      inicioEventoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = inicioEvento.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInicioEventoFirestoreData(
  InicioEventoStruct? inicioEvento, [
  bool forFieldValue = false,
]) {
  if (inicioEvento == null) {
    return {};
  }
  final firestoreData = mapToFirestore(inicioEvento.toMap());

  // Add any Firestore field values
  inicioEvento.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInicioEventoListFirestoreData(
  List<InicioEventoStruct>? inicioEventos,
) =>
    inicioEventos?.map((e) => getInicioEventoFirestoreData(e, true)).toList() ??
    [];
