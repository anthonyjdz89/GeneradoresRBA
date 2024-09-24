// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends FFFirebaseStruct {
  ClienteStruct({
    String? cliente,
    String? nombre,
    String? documentID,
    String? correoElectronico,
    String? telefono,
    String? direccion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cliente = cliente,
        _nombre = nombre,
        _documentID = documentID,
        _correoElectronico = correoElectronico,
        _telefono = telefono,
        _direccion = direccion,
        super(firestoreUtilData);

  // "Cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  set cliente(String? val) => _cliente = val;

  bool hasCliente() => _cliente != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "documentID" field.
  String? _documentID;
  String get documentID => _documentID ?? '';
  set documentID(String? val) => _documentID = val;

  bool hasDocumentID() => _documentID != null;

  // "correoElectronico" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  set correoElectronico(String? val) => _correoElectronico = val;

  bool hasCorreoElectronico() => _correoElectronico != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        cliente: data['Cliente'] as String?,
        nombre: data['nombre'] as String?,
        documentID: data['documentID'] as String?,
        correoElectronico: data['correoElectronico'] as String?,
        telefono: data['telefono'] as String?,
        direccion: data['direccion'] as String?,
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClienteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Cliente': _cliente,
        'nombre': _nombre,
        'documentID': _documentID,
        'correoElectronico': _correoElectronico,
        'telefono': _telefono,
        'direccion': _direccion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Cliente': serializeParam(
          _cliente,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'documentID': serializeParam(
          _documentID,
          ParamType.String,
        ),
        'correoElectronico': serializeParam(
          _correoElectronico,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
        cliente: deserializeParam(
          data['Cliente'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        documentID: deserializeParam(
          data['documentID'],
          ParamType.String,
          false,
        ),
        correoElectronico: deserializeParam(
          data['correoElectronico'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct &&
        cliente == other.cliente &&
        nombre == other.nombre &&
        documentID == other.documentID &&
        correoElectronico == other.correoElectronico &&
        telefono == other.telefono &&
        direccion == other.direccion;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [cliente, nombre, documentID, correoElectronico, telefono, direccion]);
}

ClienteStruct createClienteStruct({
  String? cliente,
  String? nombre,
  String? documentID,
  String? correoElectronico,
  String? telefono,
  String? direccion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClienteStruct(
      cliente: cliente,
      nombre: nombre,
      documentID: documentID,
      correoElectronico: correoElectronico,
      telefono: telefono,
      direccion: direccion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClienteStruct? updateClienteStruct(
  ClienteStruct? clienteStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clienteStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClienteStructData(
  Map<String, dynamic> firestoreData,
  ClienteStruct? clienteStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clienteStruct == null) {
    return;
  }
  if (clienteStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && clienteStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clienteStructData =
      getClienteFirestoreData(clienteStruct, forFieldValue);
  final nestedData =
      clienteStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = clienteStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClienteFirestoreData(
  ClienteStruct? clienteStruct, [
  bool forFieldValue = false,
]) {
  if (clienteStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clienteStruct.toMap());

  // Add any Firestore field values
  clienteStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClienteListFirestoreData(
  List<ClienteStruct>? clienteStructs,
) =>
    clienteStructs?.map((e) => getClienteFirestoreData(e, true)).toList() ?? [];
