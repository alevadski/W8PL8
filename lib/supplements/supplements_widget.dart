import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_sup_intake_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../manage_supplements/manage_supplements_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SupplementsWidget extends StatefulWidget {
  const SupplementsWidget({Key? key}) : super(key: key);

  @override
  _SupplementsWidgetState createState() => _SupplementsWidgetState();
}

class _SupplementsWidgetState extends State<SupplementsWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Supplements'});
  }

  @override
  void dispose() {
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
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: FlutterFlowIconButton(
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
            logFirebaseEvent('SUPPLEMENTS_PAGE_add_ICN_ON_TAP');
            logFirebaseEvent('IconButton_bottom_sheet');
            await showModalBottomSheet(
              isScrollControlled: true,
              enableDrag: false,
              context: context,
              builder: (context) {
                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: AddSupIntakeWidget(),
                  ),
                );
              },
            ).then((value) => setState(() {}));
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, -1),
          child: Text(
            'Supplements',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.settings_input_component,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              logFirebaseEvent('SUPPLEMENTS_ManageSupplementsButton_ON_T');
              logFirebaseEvent('ManageSupplementsButton_navigate_to');
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ManageSupplementsWidget(),
                ),
              );
            },
          ),
        ],
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
                child: StreamBuilder<List<SupplementIntakesRecord>>(
                  stream: querySupplementIntakesRecord(
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
                    List<SupplementIntakesRecord>
                        supsIntakeListSupplementIntakesRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount:
                          supsIntakeListSupplementIntakesRecordList.length,
                      itemBuilder: (context, supsIntakeListIndex) {
                        final supsIntakeListSupplementIntakesRecord =
                            supsIntakeListSupplementIntakesRecordList[
                                supsIntakeListIndex];
                        return Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 15, 0),
                                  child: Container(
                                    width: 12,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color:
                                          supsIntakeListSupplementIntakesRecord
                                              .data.supplementType?.color,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(0),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Text(
                                      supsIntakeListSupplementIntakesRecord
                                          .data.supplementType!.name!,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 15, 0),
                                  child: Text(
                                    '${supsIntakeListSupplementIntakesRecord.data.amount?.toString()}${supsIntakeListSupplementIntakesRecord.data.supUnitType}',
                                    maxLines: 1,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: FaIcon(
                                    FontAwesomeIcons.ellipsisV,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'SUPPLEMENTS_PAGE_ellipsisV_ICN_ON_TAP');
                                    logFirebaseEvent('IconButton_backend_call');
                                    await supsIntakeListSupplementIntakesRecord
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
