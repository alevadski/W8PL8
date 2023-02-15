import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'workout_details_model.dart';
export 'workout_details_model.dart';

class WorkoutDetailsWidget extends StatefulWidget {
  const WorkoutDetailsWidget({
    Key? key,
    this.workout,
  }) : super(key: key);

  final DocumentReference? workout;

  @override
  _WorkoutDetailsWidgetState createState() => _WorkoutDetailsWidgetState();
}

class _WorkoutDetailsWidgetState extends State<WorkoutDetailsWidget> {
  late WorkoutDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutDetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'WorkoutDetails'});
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

    return FutureBuilder<WorkoutsRecord>(
      future: WorkoutsRecord.getDocumentOnce(widget.workout!),
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
        final workoutDetailsWorkoutsRecord = snapshot.data!;
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
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('WORKOUT_DETAILS_PAGE_close_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                Navigator.pop(context);
              },
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.mode_edit,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Image.asset(
                                  'assets/images/Laurel_wreath_left.png',
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.15),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 6),
                                  child: Text(
                                    valueOrDefault<String>(
                                      '${workoutDetailsWorkoutsRecord.totalLifted?.toString()} kg',
                                      '56747 kg',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 20, 0, 0),
                                child: Image.asset(
                                  'assets/images/Laurel_wreath_right.png',
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                child: Image.asset(
                                  'assets/images/excavate.png',
                                  width: 130,
                                  height: 130,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Share',
                        options: FFButtonOptions(
                          width: 100,
                          height: 35,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 16,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 150,
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/front.png',
                                  width: 100,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  fit: BoxFit.fitHeight,
                                ),
                                if (workoutDetailsWorkoutsRecord.muscleGroups!
                                        .toList()
                                        .contains('Biceps') ==
                                    true)
                                  Image.asset(
                                    'assets/images/biceps.png',
                                    width: 100,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitHeight,
                                  ),
                                if (workoutDetailsWorkoutsRecord.muscleGroups!
                                        .toList()
                                        .contains('Abs') ==
                                    true)
                                  Image.asset(
                                    'assets/images/abs.png',
                                    width: 100,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitHeight,
                                  ),
                                if (workoutDetailsWorkoutsRecord.muscleGroups!
                                        .toList()
                                        .contains('Chest') ==
                                    true)
                                  Image.asset(
                                    'assets/images/chest.png',
                                    width: 100,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitHeight,
                                  ),
                                if (workoutDetailsWorkoutsRecord.muscleGroups!
                                        .toList()
                                        .contains('Shoulders') ==
                                    true)
                                  Image.asset(
                                    'assets/images/shoulders.png',
                                    width: 100,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitHeight,
                                  ),
                                if (workoutDetailsWorkoutsRecord.muscleGroups!
                                        .toList()
                                        .contains('Legs') ==
                                    true)
                                  Image.asset(
                                    'assets/images/quads.png',
                                    width: 100,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitHeight,
                                  ),
                                if (workoutDetailsWorkoutsRecord.muscleGroups!
                                        .toList()
                                        .contains('Legs') ==
                                    true)
                                  Image.asset(
                                    'assets/images/calves.png',
                                    width: 100,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitHeight,
                                  ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      dateTimeFormat(
                                        'MMMMEEEEd',
                                        workoutDetailsWorkoutsRecord.startedAt!,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                  ),
                                  Text(
                                    functions.formatDuration(
                                        workoutDetailsWorkoutsRecord.startedAt!,
                                        workoutDetailsWorkoutsRecord.endedAt),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Builder(
                                      builder: (context) {
                                        final muscleGroup =
                                            workoutDetailsWorkoutsRecord
                                                .muscleGroups!
                                                .toList();
                                        return SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                muscleGroup.length,
                                                (muscleGroupIndex) {
                                              final muscleGroupItem =
                                                  muscleGroup[muscleGroupIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                      width: 2,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 5, 8, 5),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        muscleGroupItem,
                                                        'Biceps',
                                                      ),
                                                      maxLines: 1,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FutureBuilder<List<RepetitionsRecord>>(
                      future: queryRepetitionsRecordOnce(
                        parent: widget.workout,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<RepetitionsRecord>
                            repetitionsListRepetitionsRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount:
                              repetitionsListRepetitionsRecordList.length,
                          itemBuilder: (context, repetitionsListIndex) {
                            final repetitionsListRepetitionsRecord =
                                repetitionsListRepetitionsRecordList[
                                    repetitionsListIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
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
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
