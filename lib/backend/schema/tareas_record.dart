import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TareasRecord extends FirestoreRecord {
  TareasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "generadorID" field.
  String? _generadorID;
  String get generadorID => _generadorID ?? '';
  bool hasGeneradorID() => _generadorID != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "usuarioAsignado" field.
  String? _usuarioAsignado;
  String get usuarioAsignado => _usuarioAsignado ?? '';
  bool hasUsuarioAsignado() => _usuarioAsignado != null;

  // "fechaAsignacion" field.
  DateTime? _fechaAsignacion;
  DateTime? get fechaAsignacion => _fechaAsignacion;
  bool hasFechaAsignacion() => _fechaAsignacion != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _estado = snapshotData['estado'] as String?;
    _generadorID = snapshotData['generadorID'] as String?;
    _name = snapshotData['name'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _usuarioAsignado = snapshotData['usuarioAsignado'] as String?;
    _fechaAsignacion = snapshotData['fechaAsignacion'] as DateTime?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'rba-generators')
      .collection('tareas');

  static Stream<TareasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TareasRecord.fromSnapshot(s));

  static Future<TareasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TareasRecord.fromSnapshot(s));

  static TareasRecord fromSnapshot(DocumentSnapshot snapshot) => TareasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TareasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TareasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TareasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TareasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTareasRecordData({
  String? descripcion,
  String? estado,
  String? generadorID,
  String? name,
  String? tipo,
  String? usuarioAsignado,
  DateTime? fechaAsignacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'estado': estado,
      'generadorID': generadorID,
      'name': name,
      'tipo': tipo,
      'usuarioAsignado': usuarioAsignado,
      'fechaAsignacion': fechaAsignacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class TareasRecordDocumentEquality implements Equality<TareasRecord> {
  const TareasRecordDocumentEquality();

  @override
  bool equals(TareasRecord? e1, TareasRecord? e2) {
    return e1?.descripcion == e2?.descripcion &&
        e1?.estado == e2?.estado &&
        e1?.generadorID == e2?.generadorID &&
        e1?.name == e2?.name &&
        e1?.tipo == e2?.tipo &&
        e1?.usuarioAsignado == e2?.usuarioAsignado &&
        e1?.fechaAsignacion == e2?.fechaAsignacion;
  }

  @override
  int hash(TareasRecord? e) => const ListEquality().hash([
        e?.descripcion,
        e?.estado,
        e?.generadorID,
        e?.name,
        e?.tipo,
        e?.usuarioAsignado,
        e?.fechaAsignacion
      ]);

  @override
  bool isValidKey(Object? o) => o is TareasRecord;
}
