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
    _workoutInProgress =
        prefs.getBool('ff_workoutInProgress') ?? _workoutInProgress;
    _totalLiftedInCurrentWorkout =
        prefs.getInt('ff_totalLiftedInCurrentWorkout') ??
            _totalLiftedInCurrentWorkout;
    _currentWorkoutId =
        prefs.getString('ff_currentWorkoutId')?.ref ?? _currentWorkoutId;
  }

  late SharedPreferences prefs;

  bool _workoutInProgress = false;
  bool get workoutInProgress => _workoutInProgress;
  set workoutInProgress(bool _value) {
    _workoutInProgress = _value;
    prefs.setBool('ff_workoutInProgress', _value);
  }

  int _totalLiftedInCurrentWorkout = 0;
  int get totalLiftedInCurrentWorkout => _totalLiftedInCurrentWorkout;
  set totalLiftedInCurrentWorkout(int _value) {
    _totalLiftedInCurrentWorkout = _value;
    prefs.setInt('ff_totalLiftedInCurrentWorkout', _value);
  }

  DocumentReference? _currentWorkoutId;
  DocumentReference? get currentWorkoutId => _currentWorkoutId;
  set currentWorkoutId(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _currentWorkoutId = _value;
    prefs.setString('ff_currentWorkoutId', _value.path);
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
