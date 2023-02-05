import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCustomSupModalWidget extends StatefulWidget {
  const AddCustomSupModalWidget({Key? key}) : super(key: key);

  @override
  _AddCustomSupModalWidgetState createState() =>
      _AddCustomSupModalWidgetState();
}

class _AddCustomSupModalWidgetState extends State<AddCustomSupModalWidget> {
  CustomSupplementsRecord? updateUserCustomSups;
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'New Supplement',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1, 0),
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
                        logFirebaseEvent(
                            'ADD_CUSTOM_SUP_MODAL_close_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_back');
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: textController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Enter sup name',
                  hintStyle: FlutterFlowTheme.of(context).bodyText2,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ADD_CUSTOM_SUP_MODAL_COMP_Button_ON_TAP');
                      logFirebaseEvent('Button_update_local_state');
                      FFAppState().lastAddedCustomSupColor =
                          FFAppState().customSupColors[0];
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 40,
                      height: 40,
                      color: FFAppState().customSupColors[0],
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('ADD_CUSTOM_SUP_MODAL_COMP__BTN_ON_TAP');
                      logFirebaseEvent('Button_update_local_state');
                      FFAppState().lastAddedCustomSupColor =
                          FFAppState().customSupColors[1];
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 40,
                      height: 40,
                      color: FFAppState().customSupColors[1],
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('ADD_CUSTOM_SUP_MODAL_COMP__BTN_ON_TAP');
                      logFirebaseEvent('Button_update_local_state');
                      FFAppState().lastAddedCustomSupColor =
                          FFAppState().customSupColors[2];
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 40,
                      height: 40,
                      color: FFAppState().customSupColors[2],
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('ADD_CUSTOM_SUP_MODAL_COMP__BTN_ON_TAP');
                      logFirebaseEvent('Button_update_local_state');
                      FFAppState().lastAddedCustomSupColor =
                          FFAppState().customSupColors[3];
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 40,
                      height: 40,
                      color: FFAppState().customSupColors[3],
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('ADD_CUSTOM_SUP_MODAL_COMP__BTN_ON_TAP');
                      logFirebaseEvent('Button_update_local_state');
                      FFAppState().lastAddedCustomSupColor =
                          FFAppState().customSupColors[4];
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 40,
                      height: 40,
                      color: FFAppState().customSupColors[4],
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('ADD_CUSTOM_SUP_MODAL_SAVE_BTN_ON_TAP');
                    logFirebaseEvent('Button_backend_call');

                    final customSupplementsCreateData =
                        createCustomSupplementsRecordData(
                      data: createSupplementTypeStruct(
                        name: textController!.text,
                        color: FFAppState().lastAddedCustomSupColor,
                        clearUnsetFields: false,
                        create: true,
                      ),
                    );
                    var customSupplementsRecordReference =
                        CustomSupplementsRecord.createDoc(
                            currentUserReference!);
                    await customSupplementsRecordReference
                        .set(customSupplementsCreateData);
                    updateUserCustomSups =
                        CustomSupplementsRecord.getDocumentFromData(
                            customSupplementsCreateData,
                            customSupplementsRecordReference);
                    logFirebaseEvent('Button_navigate_back');
                    Navigator.pop(context);

                    setState(() {});
                  },
                  text: 'Save',
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
      ],
    );
  }
}
