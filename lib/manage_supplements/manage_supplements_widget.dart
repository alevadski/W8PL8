import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_custom_sup_modal_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manage_supplements_model.dart';
export 'manage_supplements_model.dart';

class ManageSupplementsWidget extends StatefulWidget {
  const ManageSupplementsWidget({Key? key}) : super(key: key);

  @override
  _ManageSupplementsWidgetState createState() =>
      _ManageSupplementsWidgetState();
}

class _ManageSupplementsWidgetState extends State<ManageSupplementsWidget> {
  late ManageSupplementsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageSupplementsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ManageSupplements'});
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

    return StreamBuilder<List<SelectedSupplementsRecord>>(
      stream: querySelectedSupplementsRecord(
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
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<SelectedSupplementsRecord>
            manageSupplementsSelectedSupplementsRecordList = snapshot.data!;
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
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('MANAGE_SUPPLEMENTS_arrow_back_rounded_IC');
                logFirebaseEvent('IconButton_navigate_back');
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Manage Supplements',
              style: FlutterFlowTheme.of(context).title3,
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30,
                ),
                onPressed: () async {
                  logFirebaseEvent('MANAGE_SUPPLEMENTS_PAGE_add_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_bottom_sheet');
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: AddCustomSupModalWidget(),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
            ],
            centerTitle: true,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
                        child: Text(
                          'Favorite supplements',
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                      ),
                    ),
                    StreamBuilder<List<SelectedSupplementsRecord>>(
                      stream: querySelectedSupplementsRecord(
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<SelectedSupplementsRecord>
                            selectedSupsListSelectedSupplementsRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount:
                              selectedSupsListSelectedSupplementsRecordList
                                  .length,
                          itemBuilder: (context, selectedSupsListIndex) {
                            final selectedSupsListSelectedSupplementsRecord =
                                selectedSupsListSelectedSupplementsRecordList[
                                    selectedSupsListIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color:
                                              selectedSupsListSelectedSupplementsRecord
                                                  .data.color,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Text(
                                          selectedSupsListSelectedSupplementsRecord
                                              .data.name!,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    selectedSupsListSelectedSupplementsRecord
                                                            .isCustom!
                                                        ? Color(0xFF34C759)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                              ),
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      fillColor: Color(0xFFF17843),
                                      icon: Icon(
                                        Icons.remove,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'MANAGE_SUPPLEMENTS_remove_ICN_ON_TAP');
                                        logFirebaseEvent(
                                            'IconButton_backend_call');
                                        await selectedSupsListSelectedSupplementsRecord
                                            .reference
                                            .delete();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 0),
                        child: Text(
                          'All supplements ',
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                      ),
                    ),
                    StreamBuilder<List<CustomSupplementsRecord>>(
                      stream: queryCustomSupplementsRecord(
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<CustomSupplementsRecord>
                            customSupsListCustomSupplementsRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount:
                              customSupsListCustomSupplementsRecordList.length,
                          itemBuilder: (context, customSupsListIndex) {
                            final customSupsListCustomSupplementsRecord =
                                customSupsListCustomSupplementsRecordList[
                                    customSupsListIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color:
                                              customSupsListCustomSupplementsRecord
                                                  .data.color,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Text(
                                          customSupsListCustomSupplementsRecord
                                              .data.name!,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      fillColor: Color(0xFF9CD174),
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: functions.containsSupName(
                                              manageSupplementsSelectedSupplementsRecordList
                                                  .map((e) => e.data)
                                                  .toList(),
                                              customSupsListCustomSupplementsRecord
                                                  .data.name!)
                                          ? null
                                          : () async {
                                              logFirebaseEvent(
                                                  'MANAGE_SUPPLEMENTS_PAGE_add_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_backend_call');

                                              final selectedSupplementsCreateData =
                                                  createSelectedSupplementsRecordData(
                                                data:
                                                    updateSupplementTypeStruct(
                                                  customSupsListCustomSupplementsRecord
                                                      .data,
                                                  clearUnsetFields: false,
                                                ),
                                              );
                                              await SelectedSupplementsRecord
                                                      .createDoc(
                                                          currentUserReference!)
                                                  .set(
                                                      selectedSupplementsCreateData);
                                            },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    StreamBuilder<List<SupplementTypesRecord>>(
                      stream: querySupplementTypesRecord(),
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
                        List<SupplementTypesRecord>
                            supTypesListSupplementTypesRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount:
                              supTypesListSupplementTypesRecordList.length,
                          itemBuilder: (context, supTypesListIndex) {
                            final supTypesListSupplementTypesRecord =
                                supTypesListSupplementTypesRecordList[
                                    supTypesListIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color:
                                              supTypesListSupplementTypesRecord
                                                  .data.color,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Text(
                                          supTypesListSupplementTypesRecord
                                              .data.name!,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      fillColor: Color(0xFF9CD174),
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: functions.containsSupName(
                                              manageSupplementsSelectedSupplementsRecordList
                                                  .map((e) => e.data)
                                                  .toList(),
                                              supTypesListSupplementTypesRecord
                                                  .data.name!)
                                          ? null
                                          : () async {
                                              logFirebaseEvent(
                                                  'MANAGE_SUPPLEMENTS_PAGE_add_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_backend_call');

                                              final selectedSupplementsCreateData =
                                                  createSelectedSupplementsRecordData(
                                                data:
                                                    updateSupplementTypeStruct(
                                                  supTypesListSupplementTypesRecord
                                                      .data,
                                                  clearUnsetFields: false,
                                                ),
                                              );
                                              await SelectedSupplementsRecord
                                                      .createDoc(
                                                          currentUserReference!)
                                                  .set(
                                                      selectedSupplementsCreateData);
                                            },
                                    ),
                                  ],
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
