import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_program_workout_model.dart';
export 'edit_program_workout_model.dart';

class EditProgramWorkoutWidget extends StatefulWidget {
  const EditProgramWorkoutWidget({
    Key? key,
    this.programRef,
    this.dayOfWeek,
  }) : super(key: key);

  final DocumentReference? programRef;
  final String? dayOfWeek;

  @override
  _EditProgramWorkoutWidgetState createState() =>
      _EditProgramWorkoutWidgetState();
}

class _EditProgramWorkoutWidgetState extends State<EditProgramWorkoutWidget> {
  late EditProgramWorkoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProgramWorkoutModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'EditProgramWorkout'});
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

    return StreamBuilder<ProgramsRecord>(
      stream: ProgramsRecord.getDocument(widget.programRef!),
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
        final editProgramWorkoutProgramsRecord = snapshot.data!;
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
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('EDIT_PROGRAM_WORKOUT_arrow_back_ICN_ON_T');
                logFirebaseEvent('IconButton_navigate_back');
                Navigator.pop(context);
              },
            ),
            title: Text(
              widget.dayOfWeek!,
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final sets = editProgramWorkoutProgramsRecord
                            .mondayWorkout!
                            .toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: sets.length,
                          itemBuilder: (context, setsIndex) {
                            final setsItem = sets[setsIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'EDIT_PROGRAM_WORKOUT_Container_gu1wfv3f_');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  setState(() {
                                    FFAppState().selectedExercise =
                                        FFAppState().selectedExercise;
                                    FFAppState().selectedSetCount =
                                        _model.setsSliderValue!;
                                    FFAppState().selectedRepCount =
                                        _model.repsSliderValue!;
                                  });
                                  logFirebaseEvent(
                                      'Container_update_widget_state');
                                  setState(() {
                                    _model.selectedSetIndex = setsIndex;
                                  });
                                },
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
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 0, 0),
                                          child: Text(
                                            setsItem.exercise!.name!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 0, 0),
                                          child: Text(
                                            'sets',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Expanded(
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: 40,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Text(
                                                  'x ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ],
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
                                future: (_model.firestoreRequestCompleter ??=
                                        Completer<List<PresetExercisesRecord>>()
                                          ..complete(
                                              queryPresetExercisesRecordOnce()))
                                    .future,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'EDIT_PROGRAM_WORKOUT_Text_9ymxmg79_ON_TA');
                                              logFirebaseEvent(
                                                  'Text_update_app_state');
                                              setState(() {
                                                FFAppState().selectedExercise =
                                                    exercisesListPresetExercisesRecord
                                                        .name!;
                                                FFAppState()
                                                        .selectedExerciseRef =
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
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color:
                                                        valueOrDefault<Color>(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                            child: Text(
                              FFAppState().selectedExercise,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                                child: Text(
                                  '${FFAppState().selectedSetCount.toString()}sets',
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'EDIT_PROGRAM_WORKOUT_minus_ICN_ON_TAP');
                                      logFirebaseEvent(
                                          'IconButton_update_app_state');
                                      setState(() {
                                        FFAppState().selectedSetCount =
                                            FFAppState().selectedSetCount +
                                                -1.0;
                                      });
                                    },
                                  ),
                                  Expanded(
                                    child: Slider(
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      inactiveColor: Color(0xFF9E9E9E),
                                      min: 1,
                                      max: 5,
                                      value: _model.setsSliderValue ??=
                                          FFAppState().selectedSetCount,
                                      label: _model.setsSliderValue.toString(),
                                      divisions: 4,
                                      onChanged: (newValue) async {
                                        newValue = double.parse(
                                            newValue.toStringAsFixed(4));
                                        setState(() =>
                                            _model.setsSliderValue = newValue);
                                        logFirebaseEvent(
                                            'EDIT_PROGRAM_WORKOUT_SetsSlider_ON_FORM_');
                                        logFirebaseEvent(
                                            'SetsSlider_update_app_state');
                                        setState(() {
                                          FFAppState().selectedSetCount =
                                              _model.setsSliderValue!;
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'EDIT_PROGRAM_WORKOUT_plus_ICN_ON_TAP');
                                      logFirebaseEvent(
                                          'IconButton_update_app_state');
                                      setState(() {
                                        FFAppState().selectedSetCount =
                                            FFAppState().selectedSetCount + 1.0;
                                      });
                                    },
                                  ),
                                ],
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'EDIT_PROGRAM_WORKOUT_minus_ICN_ON_TAP');
                                  logFirebaseEvent(
                                      'IconButton_update_app_state');
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
                                    newValue = double.parse(
                                        newValue.toStringAsFixed(0));
                                    setState(() =>
                                        _model.repsSliderValue = newValue);
                                    logFirebaseEvent(
                                        'EDIT_PROGRAM_WORKOUT_RepsSlider_ON_FORM_');
                                    logFirebaseEvent(
                                        'RepsSlider_update_app_state');
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'EDIT_PROGRAM_WORKOUT_plus_ICN_ON_TAP');
                                  logFirebaseEvent(
                                      'IconButton_update_app_state');
                                  setState(() {
                                    FFAppState().selectedRepCount =
                                        FFAppState().selectedRepCount + 1.0;
                                  });
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                            child: FFButtonWidget(
                              onPressed: FFAppState().selectedExercise ==
                                          null ||
                                      FFAppState().selectedExercise == ''
                                  ? null
                                  : () async {
                                      logFirebaseEvent(
                                          'EDIT_PROGRAM_WORKOUT_ButtonAdd_ON_TAP');
                                      if (false) {
                                        if (widget.dayOfWeek == 'Monday') {
                                          logFirebaseEvent(
                                              'ButtonAdd_backend_call');

                                          final programsUpdateData1 = {
                                            'mondayWorkout':
                                                getSetListFirestoreData(
                                              functions.updateSetList(
                                                  editProgramWorkoutProgramsRecord
                                                      .mondayWorkout!
                                                      .toList(),
                                                  _model.selectedSetIndex,
                                                  FFAppState().selectedExercise,
                                                  FFAppState()
                                                      .selectedExerciseMuscleGroup,
                                                  _model.setsSliderValue!,
                                                  _model.repsSliderValue!),
                                            ),
                                          };
                                          await widget.programRef!
                                              .update(programsUpdateData1);
                                        }
                                      } else {
                                        if (widget.dayOfWeek == 'Monday') {
                                          logFirebaseEvent(
                                              'ButtonAdd_backend_call');

                                          final programsUpdateData2 = {
                                            'mondayWorkout':
                                                FieldValue.arrayUnion([
                                              getSetFirestoreData(
                                                createSetStruct(
                                                  times: _model.setsSliderValue,
                                                  exercise:
                                                      createExerciseStruct(
                                                    name: FFAppState()
                                                        .selectedExercise,
                                                    muscleGroup: FFAppState()
                                                        .selectedExerciseMuscleGroup,
                                                    clearUnsetFields: false,
                                                  ),
                                                  fieldValues: {
                                                    'repetitions':
                                                        FieldValue.arrayUnion([
                                                      _model.repsSliderValue
                                                    ]),
                                                  },
                                                  clearUnsetFields: false,
                                                ),
                                                true,
                                              )
                                            ]),
                                          };
                                          await widget.programRef!
                                              .update(programsUpdateData2);
                                        } else {
                                          if (widget.dayOfWeek == 'Tuesday') {
                                            logFirebaseEvent(
                                                'ButtonAdd_backend_call');

                                            final programsUpdateData3 = {
                                              'tuesdayWorkout':
                                                  FieldValue.arrayUnion([
                                                getSetFirestoreData(
                                                  createSetStruct(
                                                    times:
                                                        _model.setsSliderValue,
                                                    exercise:
                                                        createExerciseStruct(
                                                      name: FFAppState()
                                                          .selectedExercise,
                                                      muscleGroup: FFAppState()
                                                          .selectedExerciseMuscleGroup,
                                                      clearUnsetFields: false,
                                                    ),
                                                    fieldValues: {
                                                      'repetitions': FieldValue
                                                          .arrayUnion([
                                                        _model.repsSliderValue
                                                      ]),
                                                    },
                                                    clearUnsetFields: false,
                                                  ),
                                                  true,
                                                )
                                              ]),
                                            };
                                            await widget.programRef!
                                                .update(programsUpdateData3);
                                          }
                                        }
                                      }

                                      logFirebaseEvent(
                                          'ButtonAdd_update_widget_state');
                                      setState(() {
                                        _model.selectedSetIndex = null;
                                      });
                                      logFirebaseEvent(
                                          'ButtonAdd_refresh_database_request');
                                      setState(() => _model
                                          .firestoreRequestCompleter = null);
                                      await _model
                                          .waitForFirestoreRequestCompleter();
                                    },
                              text: _model.selectedSetIndex != null
                                  ? 'Update'
                                  : 'Add',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
      },
    );
  }
}
