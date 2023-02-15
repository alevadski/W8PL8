import '../backend/backend.dart';
import '../components/add_new_goal_sheet_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_goal_action_sheet_model.dart';
export 'edit_goal_action_sheet_model.dart';

class EditGoalActionSheetWidget extends StatefulWidget {
  const EditGoalActionSheetWidget({
    Key? key,
    this.itemRef,
    this.data,
  }) : super(key: key);

  final DocumentReference? itemRef;
  final ExerciseGoalStruct? data;

  @override
  _EditGoalActionSheetWidgetState createState() =>
      _EditGoalActionSheetWidgetState();
}

class _EditGoalActionSheetWidgetState extends State<EditGoalActionSheetWidget> {
  late EditGoalActionSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditGoalActionSheetModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('EDIT_GOAL_ACTION_SHEET_EDIT_BTN_ON_TAP');
                logFirebaseEvent('Button_navigate_back');
                Navigator.pop(context);
                logFirebaseEvent('Button_update_app_state');
                FFAppState().goalTargetBoth = widget.data!.target!.both!;
                FFAppState().goalSelectedExercise =
                    widget.data!.exercise!.name!;
                FFAppState().goalTargetReps = widget.data!.target!.both! ||
                    (widget.data?.target?.repetitions != null);
                FFAppState().goalSelectedRepCount =
                    widget.data!.target!.repetitions!;
                FFAppState().goalSelectedWeight = widget.data!.target!.weight!;
                logFirebaseEvent('Button_bottom_sheet');
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: AddNewGoalSheetWidget(
                          goalRef: widget.itemRef,
                          data: widget.data,
                        ),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              text: 'Edit',
              options: FFButtonOptions(
                width: double.infinity,
                height: 60,
                color: Color(0xFF4B39EF),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('EDIT_GOAL_ACTION_SHEET_DELETE_BTN_ON_TAP');
                  logFirebaseEvent('Button_backend_call');
                  await widget.itemRef!.delete();
                  logFirebaseEvent('Button_navigate_back');
                  Navigator.pop(context);
                },
                text: 'Delete',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Color(0xFFFF5963),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Color(0xFFF1F4F8),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
