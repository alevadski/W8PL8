import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_sup_intake_model.dart';
export 'add_sup_intake_model.dart';

class AddSupIntakeWidget extends StatefulWidget {
  const AddSupIntakeWidget({
    Key? key,
    this.supIntakeRef,
    this.supIntakeData,
  }) : super(key: key);

  final DocumentReference? supIntakeRef;
  final SupplementIntakeStruct? supIntakeData;

  @override
  _AddSupIntakeWidgetState createState() => _AddSupIntakeWidgetState();
}

class _AddSupIntakeWidgetState extends State<AddSupIntakeWidget> {
  late AddSupIntakeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddSupIntakeModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Material(
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
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(1, -1),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('ADD_SUP_INTAKE_COMP_close_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_navigate_back');
                    Navigator.pop(context);
                  },
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, -0.35),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: FutureBuilder<List<SelectedSupplementsRecord>>(
                          future: querySelectedSupplementsRecordOnce(
                            parent: currentUserReference,
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
                            List<SelectedSupplementsRecord>
                                listViewSelectedSupplementsRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  listViewSelectedSupplementsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewSelectedSupplementsRecord =
                                    listViewSelectedSupplementsRecordList[
                                        listViewIndex];
                                return InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'ADD_SUP_INTAKE_COMP_Row_68n02vl4_ON_TAP');
                                    logFirebaseEvent('Row_update_app_state');
                                    FFAppState().update(() {
                                      FFAppState().selectedSupType =
                                          listViewSelectedSupplementsRecord
                                              .data.name!;
                                      FFAppState().selectedSupColor =
                                          listViewSelectedSupplementsRecord
                                              .data.color!;
                                    });
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 0, 0),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color:
                                                listViewSelectedSupplementsRecord
                                                    .data.color,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: Text(
                                            listViewSelectedSupplementsRecord
                                                .data.name!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
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
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Text(
                      '${FFAppState().selectedSupUnitValue.toString()}${FFAppState().selectedSupUnitType}',
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
                              'ADD_SUP_INTAKE_COMP_minus_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_update_app_state');
                          setState(() {
                            FFAppState().selectedSupUnitValue =
                                FFAppState().selectedSupUnitValue + -1.0;
                          });
                        },
                      ),
                      Expanded(
                        child: Slider(
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          inactiveColor: Color(0xFF9E9E9E),
                          min: 1,
                          max: 100,
                          value: _model.supUnitSliderValue ??=
                              FFAppState().selectedSupUnitValue,
                          label: _model.supUnitSliderValue.toString(),
                          divisions: 99,
                          onChanged: (newValue) async {
                            newValue =
                                double.parse(newValue.toStringAsFixed(0));
                            setState(
                                () => _model.supUnitSliderValue = newValue);
                            logFirebaseEvent(
                                'ADD_SUP_INTAKE_SupUnitSlider_ON_FORM_WID');
                            logFirebaseEvent('SupUnitSlider_update_app_state');
                            setState(() {
                              FFAppState().selectedSupUnitValue =
                                  _model.supUnitSliderValue!;
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
                              'ADD_SUP_INTAKE_COMP_plus_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_update_app_state');
                          FFAppState().update(() {
                            FFAppState().selectedSupUnitValue =
                                FFAppState().selectedSupUnitValue + 1.0;
                          });
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FutureBuilder<List<SupplementUnitTypesRecord>>(
                        future: querySupplementUnitTypesRecordOnce(),
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
                          List<SupplementUnitTypesRecord>
                              listViewSupplementUnitTypesRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                listViewSupplementUnitTypesRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewSupplementUnitTypesRecord =
                                  listViewSupplementUnitTypesRecordList[
                                      listViewIndex];
                              return Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADD_SUP_INTAKE_COMP_Text_ok4oaihq_ON_TAP');
                                      logFirebaseEvent('Text_update_app_state');
                                      setState(() {
                                        FFAppState().selectedSupUnitType =
                                            listViewSupplementUnitTypesRecord
                                                .name!;
                                        FFAppState().selectedSupUnitTypeRef =
                                            listViewSupplementUnitTypesRecord
                                                .reference;
                                      });
                                    },
                                    child: Text(
                                      listViewSupplementUnitTypesRecord.name!,
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
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADD_SUP_INTAKE_COMP_ButtonAdd_ON_TAP');
                        if (widget.supIntakeRef != null) {
                          logFirebaseEvent('ButtonAdd_backend_call');

                          final supplementIntakesUpdateData =
                              createSupplementIntakesRecordData(
                            data: createSupplementIntakeStruct(
                              amount: FFAppState().selectedSupUnitValue,
                              supUnitType: FFAppState().selectedSupUnitType,
                              supplementType: createSupplementTypeStruct(
                                name: FFAppState().selectedSupType,
                                color: FFAppState().selectedSupColor,
                                clearUnsetFields: false,
                              ),
                              clearUnsetFields: false,
                            ),
                          );
                          await widget.supIntakeRef!
                              .update(supplementIntakesUpdateData);
                        } else {
                          logFirebaseEvent('ButtonAdd_backend_call');

                          final supplementIntakesCreateData =
                              createSupplementIntakesRecordData(
                            data: createSupplementIntakeStruct(
                              amount: FFAppState().selectedSupUnitValue,
                              supplementType: createSupplementTypeStruct(
                                name: FFAppState().selectedSupType,
                                color: FFAppState().selectedSupColor,
                                clearUnsetFields: false,
                                create: true,
                              ),
                              supUnitType: FFAppState().selectedSupUnitType,
                              clearUnsetFields: false,
                              create: true,
                            ),
                          );
                          await SupplementIntakesRecord.createDoc(
                                  currentUserReference!)
                              .set(supplementIntakesCreateData);
                        }

                        logFirebaseEvent('ButtonAdd_navigate_back');
                        Navigator.pop(context);
                      },
                      text: 'Save',
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
            ],
          ),
        ),
      ),
    );
  }
}
