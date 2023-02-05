import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _customSupColors = prefs
            .getStringList('ff_customSupColors')
            ?.map((x) => Color(int.tryParse(x) ?? 0))
            .toList() ??
        _customSupColors;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _selectedExercise = '';
  String get selectedExercise => _selectedExercise;
  set selectedExercise(String _value) {
    _selectedExercise = _value;
  }

  double _selectedWeight = 20;
  double get selectedWeight => _selectedWeight;
  set selectedWeight(double _value) {
    _selectedWeight = _value;
  }

  double _selectedRepCount = 8;
  double get selectedRepCount => _selectedRepCount;
  set selectedRepCount(double _value) {
    _selectedRepCount = _value;
  }

  DocumentReference? _selectedExerciseRef;
  DocumentReference? get selectedExerciseRef => _selectedExerciseRef;
  set selectedExerciseRef(DocumentReference? _value) {
    _selectedExerciseRef = _value;
  }

  List<Color> _customSupColors = [
    Color(4294123809),
    Color(4294115156),
    Color(4279096127),
    Color(4280824575),
    Color(4294015043)
  ];
  List<Color> get customSupColors => _customSupColors;
  set customSupColors(List<Color> _value) {
    _customSupColors = _value;
    prefs.setStringList(
        'ff_customSupColors', _value.map((x) => x.value.toString()).toList());
  }

  void addToCustomSupColors(Color _value) {
    _customSupColors.add(_value);
    prefs.setStringList('ff_customSupColors',
        _customSupColors.map((x) => x.value.toString()).toList());
  }

  void removeFromCustomSupColors(Color _value) {
    _customSupColors.remove(_value);
    prefs.setStringList('ff_customSupColors',
        _customSupColors.map((x) => x.value.toString()).toList());
  }

  Color _lastAddedCustomSupColor = Colors.transparent;
  Color get lastAddedCustomSupColor => _lastAddedCustomSupColor;
  set lastAddedCustomSupColor(Color _value) {
    _lastAddedCustomSupColor = _value;
  }

  double _selectedSupUnitValue = 40;
  double get selectedSupUnitValue => _selectedSupUnitValue;
  set selectedSupUnitValue(double _value) {
    _selectedSupUnitValue = _value;
  }

  DocumentReference? _selectedSupUnitTypeRef;
  DocumentReference? get selectedSupUnitTypeRef => _selectedSupUnitTypeRef;
  set selectedSupUnitTypeRef(DocumentReference? _value) {
    _selectedSupUnitTypeRef = _value;
  }

  DocumentReference? _selectedSupTypeRef;
  DocumentReference? get selectedSupTypeRef => _selectedSupTypeRef;
  set selectedSupTypeRef(DocumentReference? _value) {
    _selectedSupTypeRef = _value;
  }

  String _selectedSupUnitType = '';
  String get selectedSupUnitType => _selectedSupUnitType;
  set selectedSupUnitType(String _value) {
    _selectedSupUnitType = _value;
  }

  String _selectedSupType = '';
  String get selectedSupType => _selectedSupType;
  set selectedSupType(String _value) {
    _selectedSupType = _value;
  }

  Color _selectedSupColor = Colors.transparent;
  Color get selectedSupColor => _selectedSupColor;
  set selectedSupColor(Color _value) {
    _selectedSupColor = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
