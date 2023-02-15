import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_timer.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'active_workout_model.dart';
export 'active_workout_model.dart';

class ActiveWorkoutWidget extends StatefulWidget {
  const ActiveWorkoutWidget({Key? key}) : super(key: key);

  @override
  _ActiveWorkoutWidgetState createState() => _ActiveWorkoutWidgetState();
}

class _ActiveWorkoutWidgetState extends State<ActiveWorkoutWidget> {
  late ActiveWorkoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActiveWorkoutModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ActiveWorkout'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ACTIVE_WORKOUT_ActiveWorkout_ON_LOAD');
      logFirebaseEvent('ActiveWorkout_backend_call');

      final workoutsCreateData = createWorkoutsRecordData(
        startedAt: getCurrentTimestamp,
        userRef: currentUserReference,
      );
      var workoutsRecordReference = WorkoutsRecord.collection.doc();
      await workoutsRecordReference.set(workoutsCreateData);
      _model.currentWorkout = WorkoutsRecord.getDocumentFromData(
          workoutsCreateData, workoutsRecordReference);
      logFirebaseEvent('ActiveWorkout_refresh_database_request');
      setState(() => _model.firestoreRequestCompleter = null);
      logFirebaseEvent('ActiveWorkout_timer');
      _model.timerController.onExecute.add(StopWatchExecute.start);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('ACTIVE_WORKOUT_arrow_back_rounded_ICN_ON');
            logFirebaseEvent('IconButton_alert_dialog');
            var confirmDialogResponse = await showDialog<bool>(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('I\'ts a fucking HARAM!!!11!'),
                      actions: [
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(alertDialogContext, false),
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(alertDialogContext, true),
                          child: Text('I\'m brokie anyways'),
                        ),
                      ],
                    );
                  },
                ) ??
                false;
            if (confirmDialogResponse) {
              logFirebaseEvent('IconButton_backend_call');
              await _model.currentWorkout!.reference.delete();
              logFirebaseEvent('IconButton_navigate_back');
              Navigator.pop(context);
            }
          },
        ),
        title: FlutterFlowTimer(
          initialTime: _model.timerMilliseconds,
          getDisplayTime: (value) =>
              StopWatchTimer.getDisplayTime(value, milliSecond: false),
          timer: _model.timerController,
          updateStateInterval: Duration(milliseconds: 1000),
          onChanged: (value, displayTime, shouldUpdate) {
            _model.timerMilliseconds = value;
            _model.timerValue = displayTime;
            if (shouldUpdate) setState(() {});
          },
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).secondaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('ACTIVE_WORKOUT_FinishWorkoutBtn_ON_TAP');
              logFirebaseEvent('FinishWorkoutBtn_alert_dialog');
              var confirmDialogResponse = await showDialog<bool>(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Save and quit?'),
                        actions: [
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, false),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, true),
                            child: Text('Yes, I\'m done'),
                          ),
                        ],
                      );
                    },
                  ) ??
                  false;
              if (confirmDialogResponse) {
                logFirebaseEvent('FinishWorkoutBtn_backend_call');

                final workoutsUpdateData = createWorkoutsRecordData(
                  endedAt: getCurrentTimestamp,
                );
                await _model.currentWorkout!.reference
                    .update(workoutsUpdateData);
                logFirebaseEvent('FinishWorkoutBtn_navigate_back');
                Navigator.pop(context);
              } else {
                return;
              }
            },
            text: 'Finish',
            options: FFButtonOptions(
              height: 40,
              color: Colors.transparent,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              elevation: 0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FutureBuilder<List<RepetitionsRecord>>(
                  future: (_model.firestoreRequestCompleter ??=
                          Completer<List<RepetitionsRecord>>()
                            ..complete(queryRepetitionsRecordOnce(
                              parent: _model.currentWorkout!.reference,
                            )))
                      .future,
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<RepetitionsRecord>
                        repetitionsListRepetitionsRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: repetitionsListRepetitionsRecordList.length,
                      itemBuilder: (context, repetitionsListIndex) {
                        final repetitionsListRepetitionsRecord =
                            repetitionsListRepetitionsRecordList[
                                repetitionsListIndex];
                        return Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'ACTIVE_WORKOUT_Column_n0kw8gkv_ON_TAP');
                                  logFirebaseEvent('Column_update_app_state');
                                  setState(() {});
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 16, 0, 0),
                                      child: Text(
                                        repetitionsListRepetitionsRecord
                                            .data.exercise!.name!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 16, 0, 0),
                                      child: Text(
                                        '${repetitionsListRepetitionsRecord.data.weight?.toString()} kg X ${repetitionsListRepetitionsRecord.data.times?.toString()} times',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0, -0.35),
                          child: FutureBuilder<List<PresetExercisesRecord>>(
                            future: queryPresetExercisesRecordOnce(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 20),
                                    child: LinearProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<PresetExercisesRecord>
                                  exercisesListPresetExercisesRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    exercisesListPresetExercisesRecordList
                                        .length,
                                itemBuilder: (context, exercisesListIndex) {
                                  final exercisesListPresetExercisesRecord =
                                      exercisesListPresetExercisesRecordList[
                                          exercisesListIndex];
                                  return Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'ACTIVE_WORKOUT_PAGE_Text_3isnejab_ON_TAP');
                                          logFirebaseEvent(
                                              'Text_update_app_state');
                                          setState(() {
                                            FFAppState().selectedExercise =
                                                exercisesListPresetExercisesRecord
                                                    .name!;
                                            FFAppState().selectedExerciseRef =
                                                exercisesListPresetExercisesRecord
                                                    .reference;
                                            FFAppState()
                                                    .selectedExerciseMuscleGroup =
                                                exercisesListPresetExercisesRecord
                                                    .muscleGroup!;
                                          });
                                        },
                                        child: Text(
                                          exercisesListPresetExercisesRecord
                                              .name!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: valueOrDefault<Color>(
                                                  exercisesListPresetExercisesRecord
                                                              .name ==
                                                          FFAppState()
                                                              .selectedExercise
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .overlay,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                                ),
                                              ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: Text(
                          FFAppState().selectedExercise,
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                        child: Text(
                          '${FFAppState().selectedWeight.toString()} kg',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: FaIcon(
                              FontAwesomeIcons.minus,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ACTIVE_WORKOUT_PAGE_minus_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().selectedWeight =
                                    FFAppState().selectedWeight + -0.5;
                              });
                            },
                          ),
                          Expanded(
                            child: Slider(
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              inactiveColor: Color(0xFF9E9E9E),
                              min: 0.5,
                              max: 500,
                              value: _model.weightSliderValue ??=
                                  FFAppState().selectedWeight,
                              label: _model.weightSliderValue.toString(),
                              divisions: 999,
                              onChanged: (newValue) async {
                                newValue =
                                    double.parse(newValue.toStringAsFixed(4));
                                setState(
                                    () => _model.weightSliderValue = newValue);
                                logFirebaseEvent(
                                    'ACTIVE_WORKOUT_WeightSlider_ON_FORM_WIDG');
                                logFirebaseEvent(
                                    'WeightSlider_update_app_state');
                                setState(() {
                                  FFAppState().selectedWeight =
                                      _model.weightSliderValue!;
                                });
                              },
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: FaIcon(
                              FontAwesomeIcons.plus,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ACTIVE_WORKOUT_PAGE_plus_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().selectedWeight =
                                    FFAppState().selectedWeight + 0.5;
                              });
                            },
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Text(
                          '${FFAppState().selectedRepCount.toString()} reps',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: FaIcon(
                              FontAwesomeIcons.minus,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ACTIVE_WORKOUT_PAGE_minus_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().selectedRepCount =
                                    FFAppState().selectedRepCount + -1.0;
                              });
                            },
                          ),
                          Expanded(
                            child: Slider(
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              inactiveColor: Color(0xFF9E9E9E),
                              min: 1,
                              max: 50,
                              value: _model.repsSliderValue ??=
                                  FFAppState().selectedRepCount,
                              label: _model.repsSliderValue.toString(),
                              divisions: 49,
                              onChanged: (newValue) async {
                                newValue =
                                    double.parse(newValue.toStringAsFixed(0));
                                setState(
                                    () => _model.repsSliderValue = newValue);
                                logFirebaseEvent(
                                    'ACTIVE_WORKOUT_RepsSlider_ON_FORM_WIDGET');
                                logFirebaseEvent('RepsSlider_update_app_state');
                                FFAppState().update(() {
                                  FFAppState().selectedRepCount =
                                      _model.repsSliderValue!;
                                });
                              },
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: FaIcon(
                              FontAwesomeIcons.plus,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ACTIVE_WORKOUT_PAGE_plus_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().selectedRepCount =
                                    FFAppState().selectedRepCount + 1.0;
                              });
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: FFButtonWidget(
                          onPressed: FFAppState().selectedExercise == null ||
                                  FFAppState().selectedExercise == ''
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'ACTIVE_WORKOUT_PAGE_ButtonAdd_ON_TAP');
                                  logFirebaseEvent('ButtonAdd_backend_call');

                                  final repetitionsCreateData =
                                      createRepetitionsRecordData(
                                    data: createRepetitionStruct(
                                      weight: _model.weightSliderValue,
                                      times: _model.repsSliderValue,
                                      exercise: createExerciseStruct(
                                        name: FFAppState().selectedExercise,
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                      clearUnsetFields: false,
                                      create: true,
                                    ),
                                    exerciseRef:
                                        FFAppState().selectedExerciseRef,
                                  );
                                  await RepetitionsRecord.createDoc(
                                          _model.currentWorkout!.reference)
                                      .set(repetitionsCreateData);
                                  logFirebaseEvent('ButtonAdd_backend_call');

                                  final workoutsUpdateData = {
                                    'totalLifted': FieldValue.increment(
                                        functions.getTotalRepWeight(
                                            _model.weightSliderValue!,
                                            _model.repsSliderValue!)),
                                    'muscleGroups': FieldValue.arrayUnion([
                                      FFAppState().selectedExerciseMuscleGroup
                                    ]),
                                  };
                                  await _model.currentWorkout!.reference
                                      .update(workoutsUpdateData);
                                  logFirebaseEvent(
                                      'ButtonAdd_refresh_database_request');
                                  setState(() =>
                                      _model.firestoreRequestCompleter = null);
                                  await _model
                                      .waitForFirestoreRequestCompleter();
                                },
                          text: 'Add',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
