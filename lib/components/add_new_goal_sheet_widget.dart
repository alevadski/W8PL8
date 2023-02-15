import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_new_goal_sheet_model.dart';
export 'add_new_goal_sheet_model.dart';

class AddNewGoalSheetWidget extends StatefulWidget {
  const AddNewGoalSheetWidget({
    Key? key,
    this.goalRef,
    this.data,
  }) : super(key: key);

  final DocumentReference? goalRef;
  final ExerciseGoalStruct? data;

  @override
  _AddNewGoalSheetWidgetState createState() => _AddNewGoalSheetWidgetState();
}

class _AddNewGoalSheetWidgetState extends State<AddNewGoalSheetWidget> {
  late AddNewGoalSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewGoalSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
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
        height: MediaQuery.of(context).size.height * 1,
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: LinearProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<PresetExercisesRecord>
                        exercisesListPresetExercisesRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: exercisesListPresetExercisesRecordList.length,
                      itemBuilder: (context, exercisesListIndex) {
                        final exercisesListPresetExercisesRecord =
                            exercisesListPresetExercisesRecordList[
                                exercisesListIndex];
                        return Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADD_NEW_GOAL_SHEET_Text_kds14k1b_ON_TAP');
                                logFirebaseEvent('Text_update_app_state');
                                FFAppState().update(() {
                                  FFAppState().goalSelectedExerciseRef =
                                      FFAppState().goalSelectedExerciseRef;
                                  FFAppState().goalSelectedExercise =
                                      exercisesListPresetExercisesRecord.name!;
                                });
                              },
                              child: Text(
                                exercisesListPresetExercisesRecord.name!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: valueOrDefault<Color>(
                                        exercisesListPresetExercisesRecord
                                                    .name ==
                                                FFAppState().selectedExercise
                                            ? FlutterFlowTheme.of(context)
                                                .primaryText
                                            : FlutterFlowTheme.of(context)
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
                FFAppState().goalSelectedExercise,
                style: FlutterFlowTheme.of(context).title3,
              ),
            ),
            if (FFAppState().goalTargetBoth || !FFAppState().goalTargetReps)
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                    child: Text(
                      '${FFAppState().goalSelectedWeight.toString()} kg',
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
                              'ADD_NEW_GOAL_SHEET_COMP_minus_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_update_app_state');
                          setState(() {
                            FFAppState().goalSelectedWeight =
                                FFAppState().goalSelectedWeight + -0.5;
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
                              FFAppState().goalSelectedWeight,
                          label: _model.weightSliderValue.toString(),
                          divisions: 999,
                          onChanged: (newValue) async {
                            newValue =
                                double.parse(newValue.toStringAsFixed(4));
                            setState(() => _model.weightSliderValue = newValue);
                            logFirebaseEvent(
                                'ADD_NEW_GOAL_SHEET_WeightSlider_ON_FORM_');
                            logFirebaseEvent('WeightSlider_update_app_state');
                            setState(() {
                              FFAppState().goalSelectedWeight =
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
                              'ADD_NEW_GOAL_SHEET_COMP_plus_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_update_app_state');
                          setState(() {
                            FFAppState().goalSelectedWeight =
                                FFAppState().goalSelectedWeight + 0.5;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            if (FFAppState().goalTargetBoth || FFAppState().goalTargetReps)
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Text(
                      '${FFAppState().goalSelectedRepCount.toString()} reps',
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
                              'ADD_NEW_GOAL_SHEET_COMP_minus_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_update_app_state');
                          setState(() {
                            FFAppState().goalSelectedRepCount =
                                FFAppState().goalSelectedRepCount + -0.5;
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
                              FFAppState().goalSelectedRepCount,
                          label: _model.repsSliderValue.toString(),
                          divisions: 49,
                          onChanged: (newValue) async {
                            newValue =
                                double.parse(newValue.toStringAsFixed(0));
                            setState(() => _model.repsSliderValue = newValue);
                            logFirebaseEvent(
                                'ADD_NEW_GOAL_SHEET_RepsSlider_ON_FORM_WI');
                            logFirebaseEvent('RepsSlider_update_app_state');
                            FFAppState().update(() {
                              FFAppState().goalSelectedRepCount =
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
                              'ADD_NEW_GOAL_SHEET_COMP_plus_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_update_app_state');
                          setState(() {
                            FFAppState().goalSelectedRepCount =
                                FFAppState().goalSelectedRepCount + 0.5;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 8, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'ADD_NEW_GOAL_SHEET_WeightButton_ON_TAP');
                          logFirebaseEvent('WeightButton_update_app_state');
                          setState(() {
                            FFAppState().goalTargetReps = false;
                            FFAppState().goalTargetBoth = false;
                          });
                        },
                        text: 'weight',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context).bodyText1,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'ADD_NEW_GOAL_SHEET_RepsButton_ON_TAP');
                          logFirebaseEvent('RepsButton_update_app_state');
                          setState(() {
                            FFAppState().goalTargetReps = true;
                            FFAppState().goalTargetBoth = false;
                          });
                        },
                        text: 'reps',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context).bodyText1,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'ADD_NEW_GOAL_SHEET_BothButton_ON_TAP');
                          logFirebaseEvent('BothButton_update_app_state');
                          setState(() {
                            FFAppState().goalTargetBoth = true;
                          });
                        },
                        text: 'both',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context).bodyText1,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: FFButtonWidget(
                onPressed: FFAppState().goalSelectedExercise == null ||
                        FFAppState().goalSelectedExercise == ''
                    ? null
                    : () async {
                        logFirebaseEvent(
                            'ADD_NEW_GOAL_SHEET_COMP_ButtonAdd_ON_TAP');
                        if (widget.goalRef != null) {
                          logFirebaseEvent('ButtonAdd_backend_call');

                          final exerciseGoalsUpdateData =
                              createExerciseGoalsRecordData(
                            userRef: currentUserReference,
                            data: createExerciseGoalStruct(
                              target: createExerciseGoalTargetStruct(
                                weight: FFAppState().goalSelectedWeight,
                                both: FFAppState().goalTargetBoth,
                                repetitions: FFAppState().goalSelectedRepCount,
                                clearUnsetFields: false,
                              ),
                              exercise: updateExerciseStruct(
                                widget.data?.exercise,
                                clearUnsetFields: false,
                              ),
                              clearUnsetFields: false,
                            ),
                          );
                          await widget.goalRef!.update(exerciseGoalsUpdateData);
                        } else {
                          logFirebaseEvent('ButtonAdd_backend_call');

                          final exerciseGoalsCreateData =
                              createExerciseGoalsRecordData(
                            data: createExerciseGoalStruct(
                              createdAt: getCurrentTimestamp,
                              target: createExerciseGoalTargetStruct(
                                weight: _model.weightSliderValue,
                                both: FFAppState().goalTargetBoth,
                                repetitions: _model.repsSliderValue,
                                clearUnsetFields: false,
                                create: true,
                              ),
                              completedAt: FFAppState().constantTimestampZero,
                              exercise: createExerciseStruct(
                                name: FFAppState().goalSelectedExercise,
                                isDoubleWeight: false,
                                isBodyWeight: false,
                                icon: '',
                                clearUnsetFields: false,
                                create: true,
                              ),
                              clearUnsetFields: false,
                              create: true,
                            ),
                            userRef: currentUserReference,
                          );
                          await ExerciseGoalsRecord.collection
                              .doc()
                              .set(exerciseGoalsCreateData);
                        }

                        logFirebaseEvent('ButtonAdd_navigate_back');
                        Navigator.pop(context);
                      },
                text: valueOrDefault<String>(
                  functions.getAddGoalButtonName(widget.goalRef),
                  'Add',
                ),
                options: FFButtonOptions(
                  width: 130,
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
            ),
          ],
        ),
      ),
    );
  }
}
