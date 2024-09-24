// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosStruct extends FFFirebaseStruct {
  UsuariosStruct({
    String? nombre,
    String? email,
    String? password,
    Role? role,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _email = email,
        _password = password,
        _role = role,
        super(firestoreUtilData);

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "role" field.
  Role? _role;
  Role get role => _role ?? Role.operador;
  set role(Role? val) => _role = val;

  bool hasRole() => _role != null;

  static UsuariosStruct fromMap(Map<String, dynamic> data) => UsuariosStruct(
        nombre: data['nombre'] as String?,
        email: data['email'] as String?,
        password: data['password'] as String?,
        role: deserializeEnum<Role>(data['role']),
      );

  static UsuariosStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuariosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'email': _email,
        'password': _password,
        'role': _role?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static UsuariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuariosStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        role: deserializeParam<Role>(
          data['role'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'UsuariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuariosStruct &&
        nombre == other.nombre &&
        email == other.email &&
        password == other.password &&
        role == other.role;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nombre, email, password, role]);
}

UsuariosStruct createUsuariosStruct({
  String? nombre,
  String? email,
  String? password,
  Role? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsuariosStruct(
      nombre: nombre,
      email: email,
      password: password,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsuariosStruct? updateUsuariosStruct(
  UsuariosStruct? usuarios, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    usuarios
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsuariosStructData(
  Map<String, dynamic> firestoreData,
  UsuariosStruct? usuarios,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (usuarios == null) {
    return;
  }
  if (usuarios.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && usuarios.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usuariosData = getUsuariosFirestoreData(usuarios, forFieldValue);
  final nestedData = usuariosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = usuarios.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsuariosFirestoreData(
  UsuariosStruct? usuarios, [
  bool forFieldValue = false,
]) {
  if (usuarios == null) {
    return {};
  }
  final firestoreData = mapToFirestore(usuarios.toMap());

  // Add any Firestore field values
  usuarios.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsuariosListFirestoreData(
  List<UsuariosStruct>? usuarioss,
) =>
    usuarioss?.map((e) => getUsuariosFirestoreData(e, true)).toList() ?? [];
