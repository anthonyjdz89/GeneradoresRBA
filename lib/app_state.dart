import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _IsOnline = prefs.getBool('ff_IsOnline') ?? _IsOnline;
    });
    _safeInit(() {
      _IsSync = prefs.getBool('ff_IsSync') ?? _IsSync;
    });
    _safeInit(() {
      _inicioEventoOffline = prefs
              .getStringList('ff_inicioEventoOffline')
              ?.map((x) {
                try {
                  return InicioEventoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _inicioEventoOffline;
    });
    _safeInit(() {
      _EventReference = prefs
              .getStringList('ff_EventReference')
              ?.map((path) => path.ref)
              .toList() ??
          _EventReference;
    });
    _safeInit(() {
      _base64lmageAceite =
          prefs.getString('ff_base64lmageAceite') ?? _base64lmageAceite;
    });
    _safeInit(() {
      _base64lmageAgua =
          prefs.getString('ff_base64lmageAgua') ?? _base64lmageAgua;
    });
    _safeInit(() {
      _base64lmageAcpm =
          prefs.getString('ff_base64lmageAcpm') ?? _base64lmageAcpm;
    });
    _safeInit(() {
      _actualTIme = prefs.getString('ff_actualTIme') ?? _actualTIme;
    });
    _safeInit(() {
      _AceiteMotor = prefs
              .getStringList('ff_AceiteMotor')
              ?.map((x) {
                try {
                  return GeneradorStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AceiteMotor;
    });
    _safeInit(() {
      _ItemsAceiteMotor =
          prefs.getDouble('ff_ItemsAceiteMotor') ?? _ItemsAceiteMotor;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _IsOnline = false;
  bool get IsOnline => _IsOnline;
  set IsOnline(bool value) {
    _IsOnline = value;
    prefs.setBool('ff_IsOnline', value);
  }

  bool _IsSync = false;
  bool get IsSync => _IsSync;
  set IsSync(bool value) {
    _IsSync = value;
    prefs.setBool('ff_IsSync', value);
  }

  List<InicioEventoStruct> _inicioEventoOffline = [];
  List<InicioEventoStruct> get inicioEventoOffline => _inicioEventoOffline;
  set inicioEventoOffline(List<InicioEventoStruct> value) {
    _inicioEventoOffline = value;
    prefs.setStringList(
        'ff_inicioEventoOffline', value.map((x) => x.serialize()).toList());
  }

  void addToInicioEventoOffline(InicioEventoStruct value) {
    inicioEventoOffline.add(value);
    prefs.setStringList('ff_inicioEventoOffline',
        _inicioEventoOffline.map((x) => x.serialize()).toList());
  }

  void removeFromInicioEventoOffline(InicioEventoStruct value) {
    inicioEventoOffline.remove(value);
    prefs.setStringList('ff_inicioEventoOffline',
        _inicioEventoOffline.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromInicioEventoOffline(int index) {
    inicioEventoOffline.removeAt(index);
    prefs.setStringList('ff_inicioEventoOffline',
        _inicioEventoOffline.map((x) => x.serialize()).toList());
  }

  void updateInicioEventoOfflineAtIndex(
    int index,
    InicioEventoStruct Function(InicioEventoStruct) updateFn,
  ) {
    inicioEventoOffline[index] = updateFn(_inicioEventoOffline[index]);
    prefs.setStringList('ff_inicioEventoOffline',
        _inicioEventoOffline.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInInicioEventoOffline(int index, InicioEventoStruct value) {
    inicioEventoOffline.insert(index, value);
    prefs.setStringList('ff_inicioEventoOffline',
        _inicioEventoOffline.map((x) => x.serialize()).toList());
  }

  List<DocumentReference> _EventReference = [];
  List<DocumentReference> get EventReference => _EventReference;
  set EventReference(List<DocumentReference> value) {
    _EventReference = value;
    prefs.setStringList('ff_EventReference', value.map((x) => x.path).toList());
  }

  void addToEventReference(DocumentReference value) {
    EventReference.add(value);
    prefs.setStringList(
        'ff_EventReference', _EventReference.map((x) => x.path).toList());
  }

  void removeFromEventReference(DocumentReference value) {
    EventReference.remove(value);
    prefs.setStringList(
        'ff_EventReference', _EventReference.map((x) => x.path).toList());
  }

  void removeAtIndexFromEventReference(int index) {
    EventReference.removeAt(index);
    prefs.setStringList(
        'ff_EventReference', _EventReference.map((x) => x.path).toList());
  }

  void updateEventReferenceAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    EventReference[index] = updateFn(_EventReference[index]);
    prefs.setStringList(
        'ff_EventReference', _EventReference.map((x) => x.path).toList());
  }

  void insertAtIndexInEventReference(int index, DocumentReference value) {
    EventReference.insert(index, value);
    prefs.setStringList(
        'ff_EventReference', _EventReference.map((x) => x.path).toList());
  }

  String _base64lmageAceite = '';
  String get base64lmageAceite => _base64lmageAceite;
  set base64lmageAceite(String value) {
    _base64lmageAceite = value;
    prefs.setString('ff_base64lmageAceite', value);
  }

  String _base64lmageAgua = '';
  String get base64lmageAgua => _base64lmageAgua;
  set base64lmageAgua(String value) {
    _base64lmageAgua = value;
    prefs.setString('ff_base64lmageAgua', value);
  }

  String _base64lmageAcpm = '';
  String get base64lmageAcpm => _base64lmageAcpm;
  set base64lmageAcpm(String value) {
    _base64lmageAcpm = value;
    prefs.setString('ff_base64lmageAcpm', value);
  }

  String _actualTIme = '';
  String get actualTIme => _actualTIme;
  set actualTIme(String value) {
    _actualTIme = value;
    prefs.setString('ff_actualTIme', value);
  }

  List<GeneradorStruct> _AceiteMotor = [];
  List<GeneradorStruct> get AceiteMotor => _AceiteMotor;
  set AceiteMotor(List<GeneradorStruct> value) {
    _AceiteMotor = value;
    prefs.setStringList(
        'ff_AceiteMotor', value.map((x) => x.serialize()).toList());
  }

  void addToAceiteMotor(GeneradorStruct value) {
    AceiteMotor.add(value);
    prefs.setStringList(
        'ff_AceiteMotor', _AceiteMotor.map((x) => x.serialize()).toList());
  }

  void removeFromAceiteMotor(GeneradorStruct value) {
    AceiteMotor.remove(value);
    prefs.setStringList(
        'ff_AceiteMotor', _AceiteMotor.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAceiteMotor(int index) {
    AceiteMotor.removeAt(index);
    prefs.setStringList(
        'ff_AceiteMotor', _AceiteMotor.map((x) => x.serialize()).toList());
  }

  void updateAceiteMotorAtIndex(
    int index,
    GeneradorStruct Function(GeneradorStruct) updateFn,
  ) {
    AceiteMotor[index] = updateFn(_AceiteMotor[index]);
    prefs.setStringList(
        'ff_AceiteMotor', _AceiteMotor.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAceiteMotor(int index, GeneradorStruct value) {
    AceiteMotor.insert(index, value);
    prefs.setStringList(
        'ff_AceiteMotor', _AceiteMotor.map((x) => x.serialize()).toList());
  }

  double _ItemsAceiteMotor = 0.0;
  double get ItemsAceiteMotor => _ItemsAceiteMotor;
  set ItemsAceiteMotor(double value) {
    _ItemsAceiteMotor = value;
    prefs.setDouble('ff_ItemsAceiteMotor', value);
  }

  final _eventosCacheManager = StreamRequestManager<List<EventosRecord>>();
  Stream<List<EventosRecord>> eventosCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<EventosRecord>> Function() requestFn,
  }) =>
      _eventosCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearEventosCacheCache() => _eventosCacheManager.clear();
  void clearEventosCacheCacheKey(String? uniqueKey) =>
      _eventosCacheManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
