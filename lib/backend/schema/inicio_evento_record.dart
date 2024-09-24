import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InicioEventoRecord extends FirestoreRecord {
  InicioEventoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FinalTime" field.
  DateTime? _finalTime;
  DateTime? get finalTime => _finalTime;
  bool hasFinalTime() => _finalTime != null;

  // "HorasEnUso" field.
  double? _horasEnUso;
  double get horasEnUso => _horasEnUso ?? 0.0;
  bool hasHorasEnUso() => _horasEnUso != null;

  // "NivelAceite" field.
  String? _nivelAceite;
  String get nivelAceite => _nivelAceite ?? '';
  bool hasNivelAceite() => _nivelAceite != null;

  // "NivelAgua" field.
  String? _nivelAgua;
  String get nivelAgua => _nivelAgua ?? '';
  bool hasNivelAgua() => _nivelAgua != null;

  // "NivelCombustible" field.
  String? _nivelCombustible;
  String get nivelCombustible => _nivelCombustible ?? '';
  bool hasNivelCombustible() => _nivelCombustible != null;

  // "starTime" field.
  DateTime? _starTime;
  DateTime? get starTime => _starTime;
  bool hasStarTime() => _starTime != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "GeneradorID" field.
  String? _generadorID;
  String get generadorID => _generadorID ?? '';
  bool hasGeneradorID() => _generadorID != null;

  // "UserId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "NameGenerator" field.
  String? _nameGenerator;
  String get nameGenerator => _nameGenerator ?? '';
  bool hasNameGenerator() => _nameGenerator != null;

  // "referenceEvento" field.
  DocumentReference? _referenceEvento;
  DocumentReference? get referenceEvento => _referenceEvento;
  bool hasReferenceEvento() => _referenceEvento != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _finalTime = snapshotData['FinalTime'] as DateTime?;
    _horasEnUso = castToType<double>(snapshotData['HorasEnUso']);
    _nivelAceite = snapshotData['NivelAceite'] as String?;
    _nivelAgua = snapshotData['NivelAgua'] as String?;
    _nivelCombustible = snapshotData['NivelCombustible'] as String?;
    _starTime = snapshotData['starTime'] as DateTime?;
    _createTime = snapshotData['createTime'] as DateTime?;
    _generadorID = snapshotData['GeneradorID'] as String?;
    _userId = snapshotData['UserId'] as String?;
    _nameGenerator = snapshotData['NameGenerator'] as String?;
    _referenceEvento = snapshotData['referenceEvento'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inicio_evento')
          : FirebaseFirestore.instanceFor(
                  app: Firebase.app(), databaseId: 'rba-generators')
              .collectionGroup('inicio_evento');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inicio_evento').doc(id);

  static Stream<InicioEventoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InicioEventoRecord.fromSnapshot(s));

  static Future<InicioEventoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InicioEventoRecord.fromSnapshot(s));

  static InicioEventoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InicioEventoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InicioEventoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InicioEventoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InicioEventoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InicioEventoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInicioEventoRecordData({
  DateTime? finalTime,
  double? horasEnUso,
  String? nivelAceite,
  String? nivelAgua,
  String? nivelCombustible,
  DateTime? starTime,
  DateTime? createTime,
  String? generadorID,
  String? userId,
  String? nameGenerator,
  DocumentReference? referenceEvento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FinalTime': finalTime,
      'HorasEnUso': horasEnUso,
      'NivelAceite': nivelAceite,
      'NivelAgua': nivelAgua,
      'NivelCombustible': nivelCombustible,
      'starTime': starTime,
      'createTime': createTime,
      'GeneradorID': generadorID,
      'UserId': userId,
      'NameGenerator': nameGenerator,
      'referenceEvento': referenceEvento,
    }.withoutNulls,
  );

  return firestoreData;
}

class InicioEventoRecordDocumentEquality
    implements Equality<InicioEventoRecord> {
  const InicioEventoRecordDocumentEquality();

  @override
  bool equals(InicioEventoRecord? e1, InicioEventoRecord? e2) {
    return e1?.finalTime == e2?.finalTime &&
        e1?.horasEnUso == e2?.horasEnUso &&
        e1?.nivelAceite == e2?.nivelAceite &&
        e1?.nivelAgua == e2?.nivelAgua &&
        e1?.nivelCombustible == e2?.nivelCombustible &&
        e1?.starTime == e2?.starTime &&
        e1?.createTime == e2?.createTime &&
        e1?.generadorID == e2?.generadorID &&
        e1?.userId == e2?.userId &&
        e1?.nameGenerator == e2?.nameGenerator &&
        e1?.referenceEvento == e2?.referenceEvento;
  }

  @override
  int hash(InicioEventoRecord? e) => const ListEquality().hash([
        e?.finalTime,
        e?.horasEnUso,
        e?.nivelAceite,
        e?.nivelAgua,
        e?.nivelCombustible,
        e?.starTime,
        e?.createTime,
        e?.generadorID,
        e?.userId,
        e?.nameGenerator,
        e?.referenceEvento
      ]);

  @override
  bool isValidKey(Object? o) => o is InicioEventoRecord;
}
