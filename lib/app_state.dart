import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _localAddress = prefs.getString('ff_localAddress') ?? _localAddress;
    _localLatLng = _latLngFromString(prefs.getString('ff_localLatLng'));
  }

  SharedPreferences prefs;

  String phone = '';

  List<DocumentReference> adminList = [];

  String _localAddress = '';
  String get localAddress => _localAddress;
  set localAddress(String _value) {
    _localAddress = _value;
    prefs.setString('ff_localAddress', _value);
  }

  LatLng _localLatLng;
  LatLng get localLatLng => _localLatLng;
  set localLatLng(LatLng _value) {
    _localLatLng = _value;
    prefs.setString('ff_localLatLng', _value.serialize());
  }

  DateTime localScheduleDate;

  String localPreferedTime = '';

  String localPreferedDay = '';

  DocumentReference localService;

  String localServiceName = '';

  String localServiceCategory = '';

  int localPetAmount = 0;

  String localServiceDesc = '';

  double localServiceFee = 0.0;

  bool isFeatureReady = false;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
