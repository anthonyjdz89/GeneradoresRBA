import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosRecord extends FirestoreRecord {
  EventosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cantDiasEvento" field.
  double? _cantDiasEvento;
  double get cantDiasEvento => _cantDiasEvento ?? 0.0;
  bool hasCantDiasEvento() => _cantDiasEvento != null;

  // "clienteID" field.
  String? _clienteID;
  String get clienteID => _clienteID ?? '';
  bool hasClienteID() => _clienteID != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "facturaID" field.
  String? _facturaID;
  String get facturaID => _facturaID ?? '';
  bool hasFacturaID() => _facturaID != null;

  // "fechaEvento" field.
  DateTime? _fechaEvento;
  DateTime? get fechaEvento => _fechaEvento;
  bool hasFechaEvento() => _fechaEvento != null;

  // "fechaPrueba" field.
  DateTime? _fechaPrueba;
  DateTime? get fechaPrueba => _fechaPrueba;
  bool hasFechaPrueba() => _fechaPrueba != null;

  // "generadoresID" field.
  List<String>? _generadoresID;
  List<String> get generadoresID => _generadoresID ?? const [];
  bool hasGeneradoresID() => _generadoresID != null;

  // "horaEvento" field.
  DateTime? _horaEvento;
  DateTime? get horaEvento => _horaEvento;
  bool hasHoraEvento() => _horaEvento != null;

  // "horaPrueba" field.
  DateTime? _horaPrueba;
  DateTime? get horaPrueba => _horaPrueba;
  bool hasHoraPrueba() => _horaPrueba != null;

  // "lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  bool hasLugar() => _lugar != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "generadorID" field.
  String? _generadorID;
  String get generadorID => _generadorID ?? '';
  bool hasGeneradorID() => _generadorID != null;

  void _initializeFields() {
    _cantDiasEvento = castToType<double>(snapshotData['cantDiasEvento']);
    _clienteID = snapshotData['clienteID'] as String?;
    _estado = snapshotData['estado'] as bool?;
    _facturaID = snapshotData['facturaID'] as String?;
    _fechaEvento = snapshotData['fechaEvento'] as DateTime?;
    _fechaPrueba = snapshotData['fechaPrueba'] as DateTime?;
    _generadoresID = getDataList(snapshotData['generadoresID']);
    _horaEvento = snapshotData['horaEvento'] as DateTime?;
    _horaPrueba = snapshotData['horaPrueba'] as DateTime?;
    _lugar = snapshotData['lugar'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _generadorID = snapshotData['generadorID'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'rba-generators')
      .collection('Eventos');

  static Stream<EventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventosRecord.fromSnapshot(s));

  static Future<EventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventosRecord.fromSnapshot(s));

  static EventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventosRecordData({
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
  String? generadorID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cantDiasEvento': cantDiasEvento,
      'clienteID': clienteID,
      'estado': estado,
      'facturaID': facturaID,
      'fechaEvento': fechaEvento,
      'fechaPrueba': fechaPrueba,
      'horaEvento': horaEvento,
      'horaPrueba': horaPrueba,
      'lugar': lugar,
      'nombre': nombre,
      'generadorID': generadorID,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventosRecordDocumentEquality implements Equality<EventosRecord> {
  const EventosRecordDocumentEquality();

  @override
  bool equals(EventosRecord? e1, EventosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cantDiasEvento == e2?.cantDiasEvento &&
        e1?.clienteID == e2?.clienteID &&
        e1?.estado == e2?.estado &&
        e1?.facturaID == e2?.facturaID &&
        e1?.fechaEvento == e2?.fechaEvento &&
        e1?.fechaPrueba == e2?.fechaPrueba &&
        listEquality.equals(e1?.generadoresID, e2?.generadoresID) &&
        e1?.horaEvento == e2?.horaEvento &&
        e1?.horaPrueba == e2?.horaPrueba &&
        e1?.lugar == e2?.lugar &&
        e1?.nombre == e2?.nombre &&
        e1?.generadorID == e2?.generadorID;
  }

  @override
  int hash(EventosRecord? e) => const ListEquality().hash([
        e?.cantDiasEvento,
        e?.clienteID,
        e?.estado,
        e?.facturaID,
        e?.fechaEvento,
        e?.fechaPrueba,
        e?.generadoresID,
        e?.horaEvento,
        e?.horaPrueba,
        e?.lugar,
        e?.nombre,
        e?.generadorID
      ]);

  @override
  bool isValidKey(Object? o) => o is EventosRecord;
}
