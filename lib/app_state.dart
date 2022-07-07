import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'backend/schema/discounts_record.dart';
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
    _rangerList = prefs
            .getStringList('ff_rangerList')
            ?.map((path) => path.ref)
            ?.toList() ??
        _rangerList;
  }

  SharedPreferences prefs;

  String phone = '';

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

  List<DiscountsRecord> localDiscount = [];

  bool isFeatureReady = false;

  List<DocumentReference> _rangerList = [
    FirebaseFirestore.instance.doc('/rangers/Q5BvEteqpThJrenAzga36UCdQei2'),
    FirebaseFirestore.instance.doc('/rangers/pUgDOviQ0jPbDBPgvpsCvUtrTA32')
  ];
  List<DocumentReference> get rangerList => _rangerList;
  set rangerList(List<DocumentReference> _value) {
    _rangerList = _value;
    prefs.setStringList('ff_rangerList', _value.map((x) => x.path).toList());
  }

  void addToRangerList(DocumentReference _value) {
    _rangerList.add(_value);
    prefs.setStringList(
        'ff_rangerList', _rangerList.map((x) => x.path).toList());
  }

  void removeFromRangerList(DocumentReference _value) {
    _rangerList.remove(_value);
    prefs.setStringList(
        'ff_rangerList', _rangerList.map((x) => x.path).toList());
  }

  List<DocumentReference> adminList = [
    FirebaseFirestore.instance.doc('/rangers/Q5BvEteqpThJrenAzga36UCdQei2'),
    FirebaseFirestore.instance.doc('/rangers/i8VUfLEhKmPYS9NgoisxHgueTgl2'),
    FirebaseFirestore.instance.doc('/rangers/pUgDOviQ0jPbDBPgvpsCvUtrTA32')
  ];

  List<DocumentReference> customerList = [];

  String localCity = '';
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
