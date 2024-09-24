import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneradoresRecord extends FirestoreRecord {
  GeneradoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "aceiteMotor" field.
  double? _aceiteMotor;
  double get aceiteMotor => _aceiteMotor ?? 0.0;
  bool hasAceiteMotor() => _aceiteMotor != null;

  // "codigoQR" field.
  String? _codigoQR;
  String get codigoQR => _codigoQR ?? '';
  bool hasCodigoQR() => _codigoQR != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "filtroAire" field.
  double? _filtroAire;
  double get filtroAire => _filtroAire ?? 0.0;
  bool hasFiltroAire() => _filtroAire != null;

  // "generadorID" field.
  String? _generadorID;
  String get generadorID => _generadorID ?? '';
  bool hasGeneradorID() => _generadorID != null;

  // "horas_actuales" field.
  double? _horasActuales;
  double get horasActuales => _horasActuales ?? 0.0;
  bool hasHorasActuales() => _horasActuales != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "MantenimientoGenerador" field.
  DateTime? _mantenimientoGenerador;
  DateTime? get mantenimientoGenerador => _mantenimientoGenerador;
  bool hasMantenimientoGenerador() => _mantenimientoGenerador != null;

  // "limpieza_radiador" field.
  double? _limpiezaRadiador;
  double get limpiezaRadiador => _limpiezaRadiador ?? 0.0;
  bool hasLimpiezaRadiador() => _limpiezaRadiador != null;

  // "filtroCombustible" field.
  double? _filtroCombustible;
  double get filtroCombustible => _filtroCombustible ?? 0.0;
  bool hasFiltroCombustible() => _filtroCombustible != null;

  void _initializeFields() {
    _aceiteMotor = castToType<double>(snapshotData['aceiteMotor']);
    _codigoQR = snapshotData['codigoQR'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _estado = snapshotData['estado'] as bool?;
    _filtroAire = castToType<double>(snapshotData['filtroAire']);
    _generadorID = snapshotData['generadorID'] as String?;
    _horasActuales = castToType<double>(snapshotData['horas_actuales']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _mantenimientoGenerador =
        snapshotData['MantenimientoGenerador'] as DateTime?;
    _limpiezaRadiador = castToType<double>(snapshotData['limpieza_radiador']);
    _filtroCombustible = castToType<double>(snapshotData['filtroCombustible']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'rba-generators')
      .collection('generadores');

  static Stream<GeneradoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GeneradoresRecord.fromSnapshot(s));

  static Future<GeneradoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GeneradoresRecord.fromSnapshot(s));

  static GeneradoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GeneradoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GeneradoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GeneradoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GeneradoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GeneradoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGeneradoresRecordData({
  double? aceiteMotor,
  String? codigoQR,
  String? descripcion,
  bool? estado,
  double? filtroAire,
  String? generadorID,
  double? horasActuales,
  String? photoUrl,
  DateTime? mantenimientoGenerador,
  double? limpiezaRadiador,
  double? filtroCombustible,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'aceiteMotor': aceiteMotor,
      'codigoQR': codigoQR,
      'descripcion': descripcion,
      'estado': estado,
      'filtroAire': filtroAire,
      'generadorID': generadorID,
      'horas_actuales': horasActuales,
      'photo_url': photoUrl,
      'MantenimientoGenerador': mantenimientoGenerador,
      'limpieza_radiador': limpiezaRadiador,
      'filtroCombustible': filtroCombustible,
    }.withoutNulls,
  );

  return firestoreData;
}

class GeneradoresRecordDocumentEquality implements Equality<GeneradoresRecord> {
  const GeneradoresRecordDocumentEquality();

  @override
  bool equals(GeneradoresRecord? e1, GeneradoresRecord? e2) {
    return e1?.aceiteMotor == e2?.aceiteMotor &&
        e1?.codigoQR == e2?.codigoQR &&
        e1?.descripcion == e2?.descripcion &&
        e1?.estado == e2?.estado &&
        e1?.filtroAire == e2?.filtroAire &&
        e1?.generadorID == e2?.generadorID &&
        e1?.horasActuales == e2?.horasActuales &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.mantenimientoGenerador == e2?.mantenimientoGenerador &&
        e1?.limpiezaRadiador == e2?.limpiezaRadiador &&
        e1?.filtroCombustible == e2?.filtroCombustible;
  }

  @override
  int hash(GeneradoresRecord? e) => const ListEquality().hash([
        e?.aceiteMotor,
        e?.codigoQR,
        e?.descripcion,
        e?.estado,
        e?.filtroAire,
        e?.generadorID,
        e?.horasActuales,
        e?.photoUrl,
        e?.mantenimientoGenerador,
        e?.limpiezaRadiador,
        e?.filtroCombustible
      ]);

  @override
  bool isValidKey(Object? o) => o is GeneradoresRecord;
}
