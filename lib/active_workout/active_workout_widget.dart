import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActiveWorkoutWidget extends StatefulWidget {
  const ActiveWorkoutWidget({Key? key}) : super(key: key);

  @override
  _ActiveWorkoutWidgetState createState() => _ActiveWorkoutWidgetState();
}

class _ActiveWorkoutWidgetState extends State<ActiveWorkoutWidget> {
  WorkoutsRecord? currentWorkout;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  double? repsSliderValue;
  double? weightSliderValue;

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ACTIVE_WORKOUT_ActiveWorkout_ON_LOAD');
      logFirebaseEvent('ActiveWorkout_backend_call');

      final workoutsCreateData = createWorkoutsRecordData(
        date: getCurrentTimestamp,
      );
      var workoutsRecordReference =
          WorkoutsRecord.createDoc(currentUserReference!);
      await workoutsRecordReference.set(workoutsCreateData);
      currentWorkout = WorkoutsRecord.getDocumentFromData(
          workoutsCreateData, workoutsRecordReference);
    });

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ActiveWorkout'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
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
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
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
              await currentWorkout!.reference.delete();
              logFirebaseEvent('IconButton_navigate_back');
              Navigator.pop(context);
            }
          },
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
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
                logFirebaseEvent('FinishWorkoutBtn_navigate_back');
                Navigator.pop(context);
              }
            },
            text: 'Finish',
            options: FFButtonOptions(
              height: 40,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
                child: StreamBuilder<List<WorkoutsRecord>>(
                  stream: queryWorkoutsRecord(
                    parent: currentUserReference,
                    queryBuilder: (workoutsRecord) => workoutsRecord
                        .where('date', isEqualTo: currentWorkout!.date),
                    singleRecord: true,
                  ),
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
                    List<WorkoutsRecord> exerciseListWorkoutsRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final exerciseListWorkoutsRecord =
                        exerciseListWorkoutsRecordList.isNotEmpty
                            ? exerciseListWorkoutsRecordList.first
                            : null;
                    return Builder(
                      builder: (context) {
                        final activeWorkoutExercises =
                            exerciseListWorkoutsRecord!.repetitions!.toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: activeWorkoutExercises.length,
                          itemBuilder: (context, activeWorkoutExercisesIndex) {
                            final activeWorkoutExercisesItem =
                                activeWorkoutExercises[
                                    activeWorkoutExercisesIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
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
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 0, 0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
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
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<PresetExercisesRecord>
                                  listViewPresetExercisesRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    listViewPresetExercisesRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewPresetExercisesRecord =
                                      listViewPresetExercisesRecordList[
                                          listViewIndex];
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
                                              'Text_update_local_state');
                                          setState(() {
                                            FFAppState().selectedExercise =
                                                listViewPresetExercisesRecord
                                                    .name!;
                                            FFAppState().selectedExerciseRef =
                                                listViewPresetExercisesRecord
                                                    .reference;
                                          });
                                        },
                                        child: Text(
                                          listViewPresetExercisesRecord.name!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
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
                              logFirebaseEvent('IconButton_update_local_state');
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
                              value: weightSliderValue ??=
                                  FFAppState().selectedWeight,
                              label: weightSliderValue.toString(),
                              divisions: 999,
                              onChanged: (newValue) async {
                                newValue =
                                    double.parse(newValue.toStringAsFixed(4));
                                setState(() => weightSliderValue = newValue);
                                logFirebaseEvent(
                                    'ACTIVE_WORKOUT_WeightSlider_ON_FORM_WIDG');
                                logFirebaseEvent(
                                    'WeightSlider_update_local_state');
                                setState(() {
                                  FFAppState().selectedWeight =
                                      weightSliderValue!;
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
                              logFirebaseEvent('IconButton_update_local_state');
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
                              logFirebaseEvent('IconButton_update_local_state');
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
                              value: repsSliderValue ??=
                                  FFAppState().selectedRepCount,
                              label: repsSliderValue.toString(),
                              divisions: 49,
                              onChanged: (newValue) async {
                                newValue =
                                    double.parse(newValue.toStringAsFixed(0));
                                setState(() => repsSliderValue = newValue);
                                logFirebaseEvent(
                                    'ACTIVE_WORKOUT_RepsSlider_ON_FORM_WIDGET');
                                logFirebaseEvent(
                                    'RepsSlider_update_local_state');
                                FFAppState().update(() {
                                  FFAppState().selectedRepCount =
                                      repsSliderValue!;
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
                              logFirebaseEvent('IconButton_update_local_state');
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
                          onPressed: () async {
                            logFirebaseEvent(
                                'ACTIVE_WORKOUT_PAGE_ButtonAdd_ON_TAP');
                            logFirebaseEvent('ButtonAdd_backend_call');

                            final workoutsUpdateData = {
                              'repetitions': FieldValue.arrayUnion([
                                getRepetitionFirestoreData(
                                  createRepetitionStruct(
                                    weight: FFAppState().selectedWeight,
                                    times: FFAppState().selectedRepCount,
                                    exercise: FFAppState().selectedExerciseRef,
                                    clearUnsetFields: false,
                                  ),
                                  true,
                                )
                              ]),
                            };
                            await currentWorkout!.reference
                                .update(workoutsUpdateData);
                          },
                          text: 'Add\n',
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
