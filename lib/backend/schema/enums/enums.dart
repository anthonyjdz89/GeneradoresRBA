import 'package:collection/collection.dart';

enum Estado {
  Pendiente,
  enprogreso,
  completada,
}

enum Role {
  operador,
  admin,
}

enum Tipo {
  sistema,
  admin,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Estado):
      return Estado.values.deserialize(value) as T?;
    case (Role):
      return Role.values.deserialize(value) as T?;
    case (Tipo):
      return Tipo.values.deserialize(value) as T?;
    default:
      return null;
  }
}
