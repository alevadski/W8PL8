import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickExerciseWidget extends StatefulWidget {
  const PickExerciseWidget({
    Key? key,
    this.workoutId,
  }) : super(key: key);

  final DocumentReference? workoutId;

  @override
  _PickExerciseWidgetState createState() => _PickExerciseWidgetState();
}

class _PickExerciseWidgetState extends State<PickExerciseWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Pick exercise',
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FutureBuilder<List<ExerciseListRecord>>(
                  future: queryExerciseListRecordOnce(),
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
                    List<ExerciseListRecord> listViewExerciseListRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewExerciseListRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewExerciseListRecord =
                            listViewExerciseListRecordList[listViewIndex];
                        return InkWell(
                          onTap: () async {
                            final exercisesCreateData =
                                createExercisesRecordData(
                              name: listViewExerciseListRecord.name,
                            );
                            await ExercisesRecord.createDoc(widget.workoutId!)
                                .set(exercisesCreateData);
                            Navigator.pop(context);
                          },
                          child: ListTile(
                            title: Text(
                              listViewExerciseListRecord.name!,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20,
                            ),
                            dense: false,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
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
      ),
    );
  }
}
