// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosStruct extends FFFirebaseStruct {
  EventosStruct({
    double? cantDiasEvento,
    String? clienteID,
    bool? estado,
    String? facturaID,
    DateTime? fechaEvento,
    DateTime? fechaPrueba,
    List<String>? generadoresID,
    DateTime? horaEvento,
    DateTime? horaPrueba,
    String? lugar,
    String? nombre,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cantDiasEvento = cantDiasEvento,
        _clienteID = clienteID,
        _estado = estado,
        _facturaID = facturaID,
        _fechaEvento = fechaEvento,
        _fechaPrueba = fechaPrueba,
        _generadoresID = generadoresID,
        _horaEvento = horaEvento,
        _horaPrueba = horaPrueba,
        _lugar = lugar,
        _nombre = nombre,
        super(firestoreUtilData);

  // "cantDiasEvento" field.
  double? _cantDiasEvento;
  double get cantDiasEvento => _cantDiasEvento ?? 0.0;
  set cantDiasEvento(double? val) => _cantDiasEvento = val;

  void incrementCantDiasEvento(double amount) =>
      cantDiasEvento = cantDiasEvento + amount;

  bool hasCantDiasEvento() => _cantDiasEvento != null;

  // "clienteID" field.
  String? _clienteID;
  String get clienteID => _clienteID ?? '';
  set clienteID(String? val) => _clienteID = val;

  bool hasClienteID() => _clienteID != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  set estado(bool? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "facturaID" field.
  String? _facturaID;
  String get facturaID => _facturaID ?? '';
  set facturaID(String? val) => _facturaID = val;

  bool hasFacturaID() => _facturaID != null;

  // "fechaEvento" field.
  DateTime? _fechaEvento;
  DateTime? get fechaEvento => _fechaEvento;
  set fechaEvento(DateTime? val) => _fechaEvento = val;

  bool hasFechaEvento() => _fechaEvento != null;

  // "fechaPrueba" field.
  DateTime? _fechaPrueba;
  DateTime? get fechaPrueba => _fechaPrueba;
  set fechaPrueba(DateTime? val) => _fechaPrueba = val;

  bool hasFechaPrueba() => _fechaPrueba != null;

  // "generadoresID" field.
  List<String>? _generadoresID;
  List<String> get generadoresID => _generadoresID ?? const [];
  set generadoresID(List<String>? val) => _generadoresID = val;

  void updateGeneradoresID(Function(List<String>) updateFn) {
    updateFn(_generadoresID ??= []);
  }

  bool hasGeneradoresID() => _generadoresID != null;

  // "horaEvento" field.
  DateTime? _horaEvento;
  DateTime? get horaEvento => _horaEvento;
  set horaEvento(DateTime? val) => _horaEvento = val;

  bool hasHoraEvento() => _horaEvento != null;

  // "horaPrueba" field.
  DateTime? _horaPrueba;
  DateTime? get horaPrueba => _horaPrueba;
  set horaPrueba(DateTime? val) => _horaPrueba = val;

  bool hasHoraPrueba() => _horaPrueba != null;

  // "lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  set lugar(String? val) => _lugar = val;

  bool hasLugar() => _lugar != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  static EventosStruct fromMap(Map<String, dynamic> data) => EventosStruct(
        cantDiasEvento: castToType<double>(data['cantDiasEvento']),
        clienteID: data['clienteID'] as String?,
        estado: data['estado'] as bool?,
        facturaID: data['facturaID'] as String?,
        fechaEvento: data['fechaEvento'] as DateTime?,
        fechaPrueba: data['fechaPrueba'] as DateTime?,
        generadoresID: getDataList(data['generadoresID']),
        horaEvento: data['horaEvento'] as DateTime?,
        horaPrueba: data['horaPrueba'] as DateTime?,
        lugar: data['lugar'] as String?,
        nombre: data['nombre'] as String?,
      );

  static EventosStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cantDiasEvento': _cantDiasEvento,
        'clienteID': _clienteID,
        'estado': _estado,
        'facturaID': _facturaID,
        'fechaEvento': _fechaEvento,
        'fechaPrueba': _fechaPrueba,
        'generadoresID': _generadoresID,
        'horaEvento': _horaEvento,
        'horaPrueba': _horaPrueba,
        'lugar': _lugar,
        'nombre': _nombre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cantDiasEvento': serializeParam(
          _cantDiasEvento,
          ParamType.double,
        ),
        'clienteID': serializeParam(
          _clienteID,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.bool,
        ),
        'facturaID': serializeParam(
          _facturaID,
          ParamType.String,
        ),
        'fechaEvento': serializeParam(
          _fechaEvento,
          ParamType.DateTime,
        ),
        'fechaPrueba': serializeParam(
          _fechaPrueba,
          ParamType.DateTime,
        ),
        'generadoresID': serializeParam(
          _generadoresID,
          ParamType.String,
          isList: true,
        ),
        'horaEvento': serializeParam(
          _horaEvento,
          ParamType.DateTime,
        ),
        'horaPrueba': serializeParam(
          _horaPrueba,
          ParamType.DateTime,
        ),
        'lugar': serializeParam(
          _lugar,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventosStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventosStruct(
        cantDiasEvento: deserializeParam(
          data['cantDiasEvento'],
          ParamType.double,
          false,
        ),
        clienteID: deserializeParam(
          data['clienteID'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.bool,
          false,
        ),
        facturaID: deserializeParam(
          data['facturaID'],
          ParamType.String,
          false,
        ),
        fechaEvento: deserializeParam(
          data['fechaEvento'],
          ParamType.DateTime,
          false,
        ),
        fechaPrueba: deserializeParam(
          data['fechaPrueba'],
          ParamType.DateTime,
          false,
        ),
        generadoresID: deserializeParam<String>(
          data['generadoresID'],
          ParamType.String,
          true,
        ),
        horaEvento: deserializeParam(
          data['horaEvento'],
          ParamType.DateTime,
          false,
        ),
        horaPrueba: deserializeParam(
          data['horaPrueba'],
          ParamType.DateTime,
          false,
        ),
        lugar: deserializeParam(
          data['lugar'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EventosStruct &&
        cantDiasEvento == other.cantDiasEvento &&
        clienteID == other.clienteID &&
        estado == other.estado &&
        facturaID == other.facturaID &&
        fechaEvento == other.fechaEvento &&
        fechaPrueba == other.fechaPrueba &&
        listEquality.equals(generadoresID, other.generadoresID) &&
        horaEvento == other.horaEvento &&
        horaPrueba == other.horaPrueba &&
        lugar == other.lugar &&
        nombre == other.nombre;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cantDiasEvento,
        clienteID,
        estado,
        facturaID,
        fechaEvento,
        fechaPrueba,
        generadoresID,
        horaEvento,
        horaPrueba,
        lugar,
        nombre
      ]);
}

EventosStruct createEventosStruct({
  double? cantDiasEvento,
  String? clienteID,
  bool? estado,
  String? facturaID,
  DateTime? fechaEvento,
  DateTime? fechaPrueba,
  DateTime? horaEvento,
  DateTime? horaPrueba,
  String? lugar,
  String? nombre,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventosStruct(
      cantDiasEvento: cantDiasEvento,
      clienteID: clienteID,
      estado: estado,
      facturaID: facturaID,
      fechaEvento: fechaEvento,
      fechaPrueba: fechaPrueba,
      horaEvento: horaEvento,
      horaPrueba: horaPrueba,
      lugar: lugar,
      nombre: nombre,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventosStruct? updateEventosStruct(
  EventosStruct? eventos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventosStructData(
  Map<String, dynamic> firestoreData,
  EventosStruct? eventos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventos == null) {
    return;
  }
  if (eventos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventosData = getEventosFirestoreData(eventos, forFieldValue);
  final nestedData = eventosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventosFirestoreData(
  EventosStruct? eventos, [
  bool forFieldValue = false,
]) {
  if (eventos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventos.toMap());

  // Add any Firestore field values
  eventos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventosListFirestoreData(
  List<EventosStruct>? eventoss,
) =>
    eventoss?.map((e) => getEventosFirestoreData(e, true)).toList() ?? [];
