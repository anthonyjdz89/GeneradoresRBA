// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneradorStruct extends FFFirebaseStruct {
  GeneradorStruct({
    String? generadorID,
    String? codigoQR,
    bool? estado,
    String? photoUrl,
    UsuariosStruct? operadorActual,
    double? horasDeUso,
    String? descripcion,
    double? cambioAceite,
    double? filtroAire,
    String? filtroCombustible,
    double? limpiezaRadiador,
    DateTime? mantenimientoGenerador,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _generadorID = generadorID,
        _codigoQR = codigoQR,
        _estado = estado,
        _photoUrl = photoUrl,
        _operadorActual = operadorActual,
        _horasDeUso = horasDeUso,
        _descripcion = descripcion,
        _cambioAceite = cambioAceite,
        _filtroAire = filtroAire,
        _filtroCombustible = filtroCombustible,
        _limpiezaRadiador = limpiezaRadiador,
        _mantenimientoGenerador = mantenimientoGenerador,
        super(firestoreUtilData);

  // "generadorID" field.
  String? _generadorID;
  String get generadorID => _generadorID ?? '';
  set generadorID(String? val) => _generadorID = val;

  bool hasGeneradorID() => _generadorID != null;

  // "codigoQR" field.
  String? _codigoQR;
  String get codigoQR => _codigoQR ?? '';
  set codigoQR(String? val) => _codigoQR = val;

  bool hasCodigoQR() => _codigoQR != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  set estado(bool? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;

  bool hasPhotoUrl() => _photoUrl != null;

  // "operadorActual" field.
  UsuariosStruct? _operadorActual;
  UsuariosStruct get operadorActual => _operadorActual ?? UsuariosStruct();
  set operadorActual(UsuariosStruct? val) => _operadorActual = val;

  void updateOperadorActual(Function(UsuariosStruct) updateFn) {
    updateFn(_operadorActual ??= UsuariosStruct());
  }

  bool hasOperadorActual() => _operadorActual != null;

  // "horasDeUso" field.
  double? _horasDeUso;
  double get horasDeUso => _horasDeUso ?? 0.0;
  set horasDeUso(double? val) => _horasDeUso = val;

  void incrementHorasDeUso(double amount) => horasDeUso = horasDeUso + amount;

  bool hasHorasDeUso() => _horasDeUso != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "cambioAceite" field.
  double? _cambioAceite;
  double get cambioAceite => _cambioAceite ?? 0.0;
  set cambioAceite(double? val) => _cambioAceite = val;

  void incrementCambioAceite(double amount) =>
      cambioAceite = cambioAceite + amount;

  bool hasCambioAceite() => _cambioAceite != null;

  // "filtroAire" field.
  double? _filtroAire;
  double get filtroAire => _filtroAire ?? 0.0;
  set filtroAire(double? val) => _filtroAire = val;

  void incrementFiltroAire(double amount) => filtroAire = filtroAire + amount;

  bool hasFiltroAire() => _filtroAire != null;

  // "filtroCombustible" field.
  String? _filtroCombustible;
  String get filtroCombustible => _filtroCombustible ?? '';
  set filtroCombustible(String? val) => _filtroCombustible = val;

  bool hasFiltroCombustible() => _filtroCombustible != null;

  // "limpiezaRadiador" field.
  double? _limpiezaRadiador;
  double get limpiezaRadiador => _limpiezaRadiador ?? 0.0;
  set limpiezaRadiador(double? val) => _limpiezaRadiador = val;

  void incrementLimpiezaRadiador(double amount) =>
      limpiezaRadiador = limpiezaRadiador + amount;

  bool hasLimpiezaRadiador() => _limpiezaRadiador != null;

  // "mantenimientoGenerador" field.
  DateTime? _mantenimientoGenerador;
  DateTime? get mantenimientoGenerador => _mantenimientoGenerador;
  set mantenimientoGenerador(DateTime? val) => _mantenimientoGenerador = val;

  bool hasMantenimientoGenerador() => _mantenimientoGenerador != null;

  static GeneradorStruct fromMap(Map<String, dynamic> data) => GeneradorStruct(
        generadorID: data['generadorID'] as String?,
        codigoQR: data['codigoQR'] as String?,
        estado: data['estado'] as bool?,
        photoUrl: data['photo_url'] as String?,
        operadorActual: UsuariosStruct.maybeFromMap(data['operadorActual']),
        horasDeUso: castToType<double>(data['horasDeUso']),
        descripcion: data['descripcion'] as String?,
        cambioAceite: castToType<double>(data['cambioAceite']),
        filtroAire: castToType<double>(data['filtroAire']),
        filtroCombustible: data['filtroCombustible'] as String?,
        limpiezaRadiador: castToType<double>(data['limpiezaRadiador']),
        mantenimientoGenerador: data['mantenimientoGenerador'] as DateTime?,
      );

  static GeneradorStruct? maybeFromMap(dynamic data) => data is Map
      ? GeneradorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'generadorID': _generadorID,
        'codigoQR': _codigoQR,
        'estado': _estado,
        'photo_url': _photoUrl,
        'operadorActual': _operadorActual?.toMap(),
        'horasDeUso': _horasDeUso,
        'descripcion': _descripcion,
        'cambioAceite': _cambioAceite,
        'filtroAire': _filtroAire,
        'filtroCombustible': _filtroCombustible,
        'limpiezaRadiador': _limpiezaRadiador,
        'mantenimientoGenerador': _mantenimientoGenerador,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'generadorID': serializeParam(
          _generadorID,
          ParamType.String,
        ),
        'codigoQR': serializeParam(
          _codigoQR,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.bool,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'operadorActual': serializeParam(
          _operadorActual,
          ParamType.DataStruct,
        ),
        'horasDeUso': serializeParam(
          _horasDeUso,
          ParamType.double,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'cambioAceite': serializeParam(
          _cambioAceite,
          ParamType.double,
        ),
        'filtroAire': serializeParam(
          _filtroAire,
          ParamType.double,
        ),
        'filtroCombustible': serializeParam(
          _filtroCombustible,
          ParamType.String,
        ),
        'limpiezaRadiador': serializeParam(
          _limpiezaRadiador,
          ParamType.double,
        ),
        'mantenimientoGenerador': serializeParam(
          _mantenimientoGenerador,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static GeneradorStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeneradorStruct(
        generadorID: deserializeParam(
          data['generadorID'],
          ParamType.String,
          false,
        ),
        codigoQR: deserializeParam(
          data['codigoQR'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.bool,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        operadorActual: deserializeStructParam(
          data['operadorActual'],
          ParamType.DataStruct,
          false,
          structBuilder: UsuariosStruct.fromSerializableMap,
        ),
        horasDeUso: deserializeParam(
          data['horasDeUso'],
          ParamType.double,
          false,
        ),
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        cambioAceite: deserializeParam(
          data['cambioAceite'],
          ParamType.double,
          false,
        ),
        filtroAire: deserializeParam(
          data['filtroAire'],
          ParamType.double,
          false,
        ),
        filtroCombustible: deserializeParam(
          data['filtroCombustible'],
          ParamType.String,
          false,
        ),
        limpiezaRadiador: deserializeParam(
          data['limpiezaRadiador'],
          ParamType.double,
          false,
        ),
        mantenimientoGenerador: deserializeParam(
          data['mantenimientoGenerador'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'GeneradorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeneradorStruct &&
        generadorID == other.generadorID &&
        codigoQR == other.codigoQR &&
        estado == other.estado &&
        photoUrl == other.photoUrl &&
        operadorActual == other.operadorActual &&
        horasDeUso == other.horasDeUso &&
        descripcion == other.descripcion &&
        cambioAceite == other.cambioAceite &&
        filtroAire == other.filtroAire &&
        filtroCombustible == other.filtroCombustible &&
        limpiezaRadiador == other.limpiezaRadiador &&
        mantenimientoGenerador == other.mantenimientoGenerador;
  }

  @override
  int get hashCode => const ListEquality().hash([
        generadorID,
        codigoQR,
        estado,
        photoUrl,
        operadorActual,
        horasDeUso,
        descripcion,
        cambioAceite,
        filtroAire,
        filtroCombustible,
        limpiezaRadiador,
        mantenimientoGenerador
      ]);
}

GeneradorStruct createGeneradorStruct({
  String? generadorID,
  String? codigoQR,
  bool? estado,
  String? photoUrl,
  UsuariosStruct? operadorActual,
  double? horasDeUso,
  String? descripcion,
  double? cambioAceite,
  double? filtroAire,
  String? filtroCombustible,
  double? limpiezaRadiador,
  DateTime? mantenimientoGenerador,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GeneradorStruct(
      generadorID: generadorID,
      codigoQR: codigoQR,
      estado: estado,
      photoUrl: photoUrl,
      operadorActual:
          operadorActual ?? (clearUnsetFields ? UsuariosStruct() : null),
      horasDeUso: horasDeUso,
      descripcion: descripcion,
      cambioAceite: cambioAceite,
      filtroAire: filtroAire,
      filtroCombustible: filtroCombustible,
      limpiezaRadiador: limpiezaRadiador,
      mantenimientoGenerador: mantenimientoGenerador,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GeneradorStruct? updateGeneradorStruct(
  GeneradorStruct? generador, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    generador
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGeneradorStructData(
  Map<String, dynamic> firestoreData,
  GeneradorStruct? generador,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (generador == null) {
    return;
  }
  if (generador.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && generador.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final generadorData = getGeneradorFirestoreData(generador, forFieldValue);
  final nestedData = generadorData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = generador.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGeneradorFirestoreData(
  GeneradorStruct? generador, [
  bool forFieldValue = false,
]) {
  if (generador == null) {
    return {};
  }
  final firestoreData = mapToFirestore(generador.toMap());

  // Handle nested data for "operadorActual" field.
  addUsuariosStructData(
    firestoreData,
    generador.hasOperadorActual() ? generador.operadorActual : null,
    'operadorActual',
    forFieldValue,
  );

  // Add any Firestore field values
  generador.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGeneradorListFirestoreData(
  List<GeneradorStruct>? generadors,
) =>
    generadors?.map((e) => getGeneradorFirestoreData(e, true)).toList() ?? [];
