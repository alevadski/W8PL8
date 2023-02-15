import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../edit_program_workout/edit_program_workout_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_program_model.dart';
export 'my_program_model.dart';

class MyProgramWidget extends StatefulWidget {
  const MyProgramWidget({Key? key}) : super(key: key);

  @override
  _MyProgramWidgetState createState() => _MyProgramWidgetState();
}

class _MyProgramWidgetState extends State<MyProgramWidget> {
  late MyProgramModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProgramModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MyProgram'});
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
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('MY_PROGRAM_PAGE_arrow_back_ICN_ON_TAP');
            logFirebaseEvent('IconButton_navigate_back');
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Text(
            'My Program',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 16),
                  child: StreamBuilder<List<ProgramsRecord>>(
                    stream: queryProgramsRecord(
                      queryBuilder: (programsRecord) => programsRecord
                          .where('userRef', isEqualTo: currentUserReference),
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
                      List<ProgramsRecord> containerProgramsRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerProgramsRecord =
                          containerProgramsRecordList.isNotEmpty
                              ? containerProgramsRecordList.first
                              : null;
                      return InkWell(
                        onTap: () async {
                          logFirebaseEvent(
                              'MY_PROGRAM_Container_0iqm7ric_ON_TAP');
                          logFirebaseEvent('Container_navigate_to');
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProgramWorkoutWidget(
                                programRef: containerProgramsRecord!.reference,
                                dayOfWeek: 'Monday',
                              ),
                            ),
                          );
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 16),
                                    child: Text(
                                      'Monday',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            'assets/images/front.png',
                                            width: 100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            fit: BoxFit.fitHeight,
                                          ),
                                          if (functions
                                                  .getMuscleGroupsFromSets(
                                                      containerProgramsRecord!
                                                          .mondayWorkout!
                                                          .toList())
                                                  .contains('Biceps') ==
                                              true)
                                            Image.asset(
                                              'assets/images/biceps.png',
                                              width: 100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          if (functions
                                                  .getMuscleGroupsFromSets(
                                                      containerProgramsRecord!
                                                          .mondayWorkout!
                                                          .toList())
                                                  .contains('Abs') ==
                                              true)
                                            Image.asset(
                                              'assets/images/abs.png',
                                              width: 100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          if (functions
                                                  .getMuscleGroupsFromSets(
                                                      containerProgramsRecord!
                                                          .mondayWorkout!
                                                          .toList())
                                                  .contains('Chest') ==
                                              true)
                                            Image.asset(
                                              'assets/images/chest.png',
                                              width: 100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          if (functions
                                                  .getMuscleGroupsFromSets(
                                                      containerProgramsRecord!
                                                          .mondayWorkout!
                                                          .toList())
                                                  .contains('Shoulders') ==
                                              true)
                                            Image.asset(
                                              'assets/images/shoulders.png',
                                              width: 100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          if (functions
                                                  .getMuscleGroupsFromSets(
                                                      containerProgramsRecord!
                                                          .mondayWorkout!
                                                          .toList())
                                                  .contains('Quads') ==
                                              true)
                                            Image.asset(
                                              'assets/images/quads.png',
                                              width: 100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          if (functions
                                                  .getMuscleGroupsFromSets(
                                                      containerProgramsRecord!
                                                          .mondayWorkout!
                                                          .toList())
                                                  .contains('Calves') ==
                                              true)
                                            Image.asset(
                                              'assets/images/calves.png',
                                              width: 100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              fit: BoxFit.fitHeight,
                                            ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Builder(
                                          builder: (context) {
                                            final mondayWorkoutSets =
                                                containerProgramsRecord!
                                                    .mondayWorkout!
                                                    .toList();
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  mondayWorkoutSets.length,
                                              itemBuilder: (context,
                                                  mondayWorkoutSetsIndex) {
                                                final mondayWorkoutSetsItem =
                                                    mondayWorkoutSets[
                                                        mondayWorkoutSetsIndex];
                                                return Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Text(
                                                    '${mondayWorkoutSetsItem.exercise?.name}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 16, 16),
                                    child: FFButtonWidget(
                                      onPressed: true
                                          ? null
                                          : () {
                                              print('Button pressed ...');
                                            },
                                      text: 'Edit',
                                      options: FFButtonOptions(
                                        width: 75,
                                        height: 25,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
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
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
