import '../active_workout/active_workout_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_list_view_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../workout_details/workout_details_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'workout_log_model.dart';
export 'workout_log_model.dart';

class WorkoutLogWidget extends StatefulWidget {
  const WorkoutLogWidget({Key? key}) : super(key: key);

  @override
  _WorkoutLogWidgetState createState() => _WorkoutLogWidgetState();
}

class _WorkoutLogWidgetState extends State<WorkoutLogWidget> {
  late WorkoutLogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutLogModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'WorkoutLog'});
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          logFirebaseEvent('WORKOUT_LOG_FloatingActionButton_qzm7nfr');
          logFirebaseEvent('FloatingActionButton_navigate_to');
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 300),
              reverseDuration: Duration(milliseconds: 300),
              child: ActiveWorkoutWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 24,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Your log',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 150),
                        child: FutureBuilder<List<WorkoutsRecord>>(
                          future: queryWorkoutsRecordOnce(
                            queryBuilder: (workoutsRecord) =>
                                workoutsRecord.where('userRef',
                                    isEqualTo: currentUserReference),
                          ),
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
                            List<WorkoutsRecord> listViewWorkoutsRecordList =
                                snapshot.data!;
                            if (listViewWorkoutsRecordList.isEmpty) {
                              return Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: EmptyListViewWidget(),
                                ),
                              );
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewWorkoutsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewWorkoutsRecord =
                                    listViewWorkoutsRecordList[listViewIndex];
                                return Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 0, 0),
                                          child: Text(
                                            dateTimeFormat(
                                              'MMMMEEEEd',
                                              listViewWorkoutsRecord.startedAt!,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 16),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0, 2),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'WORKOUT_LOG_PAGE_Row_9ja0tuzj_ON_TAP');
                                                logFirebaseEvent(
                                                    'Row_navigate_to');
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type: PageTransitionType
                                                        .bottomToTop,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                    reverseDuration: Duration(
                                                        milliseconds: 300),
                                                    child: WorkoutDetailsWidget(
                                                      workout:
                                                          listViewWorkoutsRecord
                                                              .reference,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/front.png',
                                                        width: 100,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        fit: BoxFit.fitHeight,
                                                      ),
                                                      if (listViewWorkoutsRecord
                                                          .muscleGroups!
                                                          .toList()
                                                          .contains('Biceps'))
                                                        Image.asset(
                                                          'assets/images/biceps.png',
                                                          width: 100,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      if (listViewWorkoutsRecord
                                                              .muscleGroups!
                                                              .toList()
                                                              .contains(
                                                                  'Abs') ==
                                                          true)
                                                        Image.asset(
                                                          'assets/images/abs.png',
                                                          width: 100,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      if (listViewWorkoutsRecord
                                                              .muscleGroups!
                                                              .toList()
                                                              .contains(
                                                                  'Chest') ==
                                                          true)
                                                        Image.asset(
                                                          'assets/images/chest.png',
                                                          width: 100,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      if (listViewWorkoutsRecord
                                                              .muscleGroups!
                                                              .toList()
                                                              .contains(
                                                                  'Shoulders') ==
                                                          true)
                                                        Image.asset(
                                                          'assets/images/shoulders.png',
                                                          width: 100,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      if (listViewWorkoutsRecord
                                                              .muscleGroups!
                                                              .toList()
                                                              .contains(
                                                                  'Legs') ==
                                                          true)
                                                        Image.asset(
                                                          'assets/images/quads.png',
                                                          width: 100,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      if (listViewWorkoutsRecord
                                                              .muscleGroups!
                                                              .toList()
                                                              .contains(
                                                                  'Calves') ==
                                                          true)
                                                        Image.asset(
                                                          'assets/images/calves.png',
                                                          width: 100,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 16,
                                                                  16, 16),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1,
                                                                          0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            16,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Total lifted: ${listViewWorkoutsRecord.totalLifted?.toString()} kg',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          16,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    'Duration: ${functions.formatDuration(listViewWorkoutsRecord.startedAt!, listViewWorkoutsRecord.endedAt)}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
